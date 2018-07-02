class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.string :price
      t.string :location
      t.string :state
      t.string :phone
      t.string :email
  

      t.timestamps
    end
  end
end
