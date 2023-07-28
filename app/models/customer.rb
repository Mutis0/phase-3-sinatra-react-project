class Customer < ActiveRecord::Base
    has_many :orders
    has_many :products,through: :orders

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :address, presence: true
  end