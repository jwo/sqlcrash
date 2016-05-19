class Order < ApplicationRecord
  belongs_to :customer
  has_secure_token
  has_many :order_items
end
