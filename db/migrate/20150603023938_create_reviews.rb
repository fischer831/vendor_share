class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :vendor_id
      t.string :review
      t.integer :rating
      t.integer :user_id
      t.string :project_name

      t.timestamps

    end
  end
end
