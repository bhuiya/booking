class CreateBookingCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :booking_customers do |t|
      t.references :bookings, foreign_key: true
      t.references :customers, foreign_key: true
      t.timestamps
    end
  end
end
