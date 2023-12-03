class Ad < ApplicationRecord
  validates_presence_of :name, :price
  validates_numericality_of :price, :seller_id
end
