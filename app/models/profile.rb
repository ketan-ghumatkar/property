class Profile < ActiveRecord::Base
  belongs_to :user
  attr_accessible :city, :mobile
end
