class CreateVendors < ActiveRecord::Migration
  def change
    create_table :vendors do |t|
      t.string :contact_name
      t.string :contact_number
      t.float :rating
      t.integer :vendor_size_id
      t.string :name
      t.integer :location_id
      t.string :contact_email
      t.string :summary
      t.string :website
      t.integer :user_id

      t.timestamps

    end
  end
end
