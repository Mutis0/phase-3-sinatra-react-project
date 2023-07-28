class CustomersController < Sinatra::Base
    set :default_content_type, 'application/json'
  
    ## Customers Routes
  
    # Get all customers
    get "/customers" do
      customers = Customer.all
      customers.to_json
    end
  
    # Get a specific customer by ID
    get '/customers/:id' do
      customer = Customer.find(params[:id])
      customer.to_json
    end
  
    # Create a new customer
    post '/customers' do
      customer = Customer.create({
        name: params[:name],
        email: params[:email],
        address: params[:address]
      })
  
      if customer.save
        redirect "/customers"
      else
        # Handle errors
        status 400
        { error: 'Failed to create customer' }.to_json
      end
    end
  
    # Update a customer by ID
    put '/customers/:id' do
      customer = Customer.find(params[:id])
  
      if customer.update(partial_customer_params)
        redirect "/customers"
      else
        # Handle errors
        status 400
        { error: 'Failed to update customer' }.to_json
      end
    end
  
    # Delete a customer by ID
    delete '/customers/:id' do
      customer = Customer.find_by(id: params[:id])
      customer.destroy
      redirect '/customers'
    end
  
    private
  
    # Method to permit only the selected fields for update
    def partial_customer_params
      params.slice(:name, :email, :address)
    end
  end
  