class CreateVendorSizes < ActiveRecord::Migration
  def change
    create_table :vendor_sizes do |t|
      t.string :vendor_size

      t.timestamps

    end
  end
end
