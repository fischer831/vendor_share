class Vendor < ActiveRecord::Base
  has_many :capabilities , :class_name => "Capability", :foreign_key => "vendor_id"
  has_many :reviews
  belongs_to :vendor_size
  belongs_to :location
end
