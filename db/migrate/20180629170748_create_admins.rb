class CreateAdmins < ActiveRecord::Migration[5.2]
  def change
    create_table :admins do |t|
      t.string :first_name
      t.string :string
      t.string :last_name
      t.string :email
      t.string :phone
      t.string :string

      t.timestamps
    end
  end
end
