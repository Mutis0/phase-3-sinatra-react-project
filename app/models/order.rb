class Order < ActiveRecord::Base
    belongs_to :customer
    has_many :product

    validates :order_id, presence: true
end