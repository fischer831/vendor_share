class CreateCapabilities < ActiveRecord::Migration
  def change
    create_table :capabilities do |t|
      t.string :vendor_id
      t.string :service_id

      t.timestamps

    end
  end
end
