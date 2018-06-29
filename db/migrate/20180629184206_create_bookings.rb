class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.string :price
      t.string :location
      t.string :phone
      t.string :email
      t.references :admins, foreign_key: true

      t.timestamps
    end
  end
end
