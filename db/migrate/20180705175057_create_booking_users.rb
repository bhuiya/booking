class CreateBookingUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :booking_users do |t|
      t.references :booking, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
