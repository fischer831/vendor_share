class Capability < ActiveRecord::Base
  belongs_to :service , :class_name => "Service", :foreign_key => "service_id"
  belongs_to :vendor
end
