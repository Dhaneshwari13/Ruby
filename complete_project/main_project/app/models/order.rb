class Order < ApplicationRecord

  has_many :products, foreign_key: product_id
  
    #  validates :details, presence: true
  # validates :count, presence: true, numericality: { greater_than: 0 }

  
end
