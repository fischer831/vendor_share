class Location < ActiveRecord::Base
  has_many :vendors

  validates :city, :presence => true
  validates :state, :presence => true
end
