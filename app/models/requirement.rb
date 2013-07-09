class Requirement < ActiveRecord::Base
  belongs_to :user
  attr_accessible :city, :max_area, :max_budget, :min_area, :min_budget, :subtype, :type
end
