class Order < ActiveRecord::Base
    belongs_to :customer
    has_many :order_items,  dependent: :destroy
    has_many :products, through: :order_items

    validates :customer_id, presence: true
end