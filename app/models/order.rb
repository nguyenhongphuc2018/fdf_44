class Order < ApplicationRecord
  belongs_to :user
  has_many :order_details

  validates :address, :phone, presence: true
end
