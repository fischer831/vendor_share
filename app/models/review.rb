class Review < ActiveRecord::Base
  belongs_to :vendor
  belongs_to :user

  validates :review, :presence => true
  validates :rating, :presence => true
end
