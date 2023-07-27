require 'sinatra'
require 'pry'

class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  # Products

  get '/' do
    "Welcome"
  end

get '/products' do
  products = Product.all
  products.to_json
end


get '/products/:id' do
  product = Product.find(params[:id])
  product.to_json
end


post '/products' do
  products = Product.create(
    name: params[:name],
    image_url: params[:image_url],
    price: params[:price],
    description: params[:description],
    category_id: params[:category_id]
    )
    products.to_json
end

patch '/products/:id' do
  products = Product.find(params[:id])
  products.update(
    name: params[:name],
    image_url: params[:image_url],
    price: params[:price],
    description: params[:description],
    category_id: params[:category_id],
  )
  products.to_json
end

delete '/products/:id' do
  products = Product.find(params[:id])
  products.destroy
  products.to_json
end

get '/products/by_category' do 
  Product.find(:all, :include => :categories, :conditions => ['category.name IN (?)', ['Cleanser', 'Toner', 'Moisturizers', 'Mask']])
end

# Categories
get '/categories' do
  categories = Category.all
  categories.to_json
end

# Orders

get '/orders' do
  orders = Order.all
  orders.to_json
end

patch '/orders/:id' do
  orders = Order.find(params[:id])
  orders.update(
      order_no: params[:order_no],
      product_id: params[:product_id],
      customer_id: params[:customer_id],
  )
  order.to_json
end

delete '/orders/:id' do
  orders = Order.find(params[:id])
  orders.destroy
  orders.to_json
end

# Customers

get '/customers' do
  customers = Customer.all
  customers.to_json
end

patch '/customers/:id' do
  customers = Customer.find(params[:id])
  customers.to_json
end   

post '/customers' do
  customers= Customer.create(
    name: params[:name],
    email: params[:email]
  )
  customers.to_json
end

patch '/customers/:id' do
  customer= Customer.find(params[:id])
  customer.update(
    name: params[:name],
    email: params[:email]
  )
  customer.to_json
end

delete '/customers/:id' do
  customer = Customer.find(params[:id])
  customer.destroy
  customer.to_json
end

end
