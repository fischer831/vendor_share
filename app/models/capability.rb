class Capability < ActiveRecord::Base
  belongs_to :service , :class_name => "Service", :foreign_key => "service_id"
  belongs_to :vendor

  validates :vendor_id, :presence => true
  validates :service_id, :presence => true
end
