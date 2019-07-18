class Order < ApplicationRecord
  belongs_to :billing, optional: true
  belongs_to :user
  belongs_to :product

scope :cart, (-> {where(payed: false)})
 
end
