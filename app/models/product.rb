class Product < ActiveRecord::Base
  belongs_to :category
  has_many :orders
  has_many :customers, through: :orders

  def customer_list
    self.customers.collect {|customer| customer.name}
  end

end