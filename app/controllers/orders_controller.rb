class OrdersController < Sinatra::Base
    set :default_content_type, 'application/json'
  
    ## Orders Routes
  
    # Get all orders
    get "/orders" do
      orders = Order.all
      orders.to_json
    end
  
    # Get a specific order by ID
    get '/orders/:id' do
      order = Order.find(params[:id])
      order.to_json
    end
  
    # Create a new order
    post '/orders' do
      order = Order.create({
        customer_id: params[:customer_id], # Assuming you pass customer_id in the request params
        product_ids: params[:product_ids] # Assuming you pass product_ids as an array in the request params
      })
  
      if order.save
        redirect "/orders"
      else
        # Handle errors
        status 400
        { error: 'Failed to create order' }.to_json
      end
    end
  
    # Update an order by ID
    put '/orders/:id' do
      order = Order.find(params[:id])
  
      if order.update(partial_order_params)
        redirect "/orders"
      else
        # Handle errors
        status 400
        { error: 'Failed to update order' }.to_json
      end
    end
  
    # Delete an order by ID
    delete '/orders/:id' do
      order = Order.find_by(id: params[:id])
      order.destroy
      redirect '/orders'
    end
  
    private
  
    # Method to permit only the selected fields for update
    def partial_order_params
      params.slice(:customer_id, :product_ids)
    end
  end
  