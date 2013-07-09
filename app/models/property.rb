class Property < ActiveRecord::Base
  belongs_to :user
  attr_accessible :bathroom, :bedroom, :carpet_area, :city, :covered_area, :description, :display_price, :floor, :furnish, :locality, :plot_area, :possession_status, :spam_check, :subtype, :total_floor, :total_price, :transaction_type, :type, :unit_price
end
