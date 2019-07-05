class Order < ApplicationRecord
  belongs_to :billing, optional: true
  belongs_to :user
  belongs_to :product
end
