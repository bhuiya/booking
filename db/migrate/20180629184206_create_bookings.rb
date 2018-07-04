class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.string :name
      t.string :price
      t.string :address
      t.string :state
      t.string :country
      t.string :phone
      t.string :email

      t.timestamps
    end
  end
end
