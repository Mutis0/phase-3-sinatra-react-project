class ApplicationController < Sinatra::Base
    set :default_content_type, 'application/json'   

    ## Product all Routes
    get "/products" do
        products = Product.all
        products.to_json
    end

    ## Create
    post '/products' do
        product = Product.create({
            name: params[:name],
            price: params[:price],
            category_id: params[:category_id]
        })
        if product.save
          redirect "/products"
        else
          # Handle errors
        end
    end

    ## selected
    get '/products/:id' do
      product = Product.find(params[:id])

      sel_prod = [
        product: product,
        category: product.category
      ]
      # product.to_json
      sel_prod.to_json
    end

    ## Delete
    delete '/products/:id' do
      product = Product.find_by(id: params[:id])
      product.destroy
      redirect '/products'

    end

    ## patch 
    put '/products/:id' do
      @product = Product.find(params[:id])
      
      # product = Product.update({
      #   name: params[:name],
      #   price: params[:price],
      #   description: params[:description],
      #   img: params[:img],
      #   category: params[:category]
      # })
      if @product.update(partial_product_params)
        redirect '/products'
      else
        # Handle errors
        # For example, you can render a JSON response with an error message
        status 400
        { error: 'Failed to update product' }.to_json
      end
    end

    private

    # Method to permit only the selected fields for update
    def partial_product_params
      params.slice(:name, :price, :description, :img, :category_id)
    end
end