class Booking < ApplicationRecord
    has_many :booking_users, dependent: :destroy
    has_many :users, through: :booking_users, dependent: :destroy
end
