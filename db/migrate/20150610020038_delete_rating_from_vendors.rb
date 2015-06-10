class DeleteRatingFromVendors < ActiveRecord::Migration
  def change
    remove_column :vendors, :rating
  end
end
