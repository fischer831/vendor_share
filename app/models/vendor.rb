class Vendor < ActiveRecord::Base
  has_many :capabilities , :class_name => "Capability", :foreign_key => "vendor_id"
  has_many :reviews

  def rating
    if reviews.empty?
      "Not yet rated"
    else
    reviews.average(:rating)
  end
  end


  belongs_to :vendor_size
  belongs_to :location
  belongs_to :user
end
