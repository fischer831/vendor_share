class Service < ActiveRecord::Base
  has_many :capabilities , :class_name => "Capability", :foreign_key => "service_id"
end
