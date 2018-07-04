class Customer < ApplicationRecord
  has_many :booking_customers, dependent: :destroy
  has_many :bookings, through: :booking_customers, dependent: :destroy
end
