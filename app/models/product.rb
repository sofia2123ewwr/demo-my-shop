class Product < ApplicationRecord
  # belongs_to :category
  # has_many :orders, through: :order_products
   has_and_belongs_to_many :category
end
