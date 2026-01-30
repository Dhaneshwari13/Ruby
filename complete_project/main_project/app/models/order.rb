class Order < ApplicationRecord
     validates :details, presence: true
  validates :count, presence: true, numericality: { greater_than: 0 }
end
