class Booking < ApplicationRecord
    has_many :booking_customers, dependent: :destroy
    has_many :customers, through: :booking_customers, dependent: :destroy
end
