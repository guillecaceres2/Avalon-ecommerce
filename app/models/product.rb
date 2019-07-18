class Product < ApplicationRecord
  has_many :billings
  has_many :orders
  has_many :users, through: :orders 
end
