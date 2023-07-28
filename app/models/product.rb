class Product < ActiveRecord::Base
  belongs_to :category
  has_many :order_items, dependent: :destroy
  has_many :orders, through: :order_items
  attr_accessor :name, :image, :price, :description
end