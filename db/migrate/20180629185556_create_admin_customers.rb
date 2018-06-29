class CreateAdminCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :admin_customers do |t|
      t.references :admin, foreign_key: true
      t.references :customer, foreign_key: true
      t.timestamps
    end
  end
end
