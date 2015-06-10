class VendorSize < ActiveRecord::Base
  has_many :vendors

  validates :vendor_size, :presence => true
end
