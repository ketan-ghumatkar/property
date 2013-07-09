class Message < ActiveRecord::Base
  belongs_to :user
  attr_accessible :buying_year, :city, :content, :country, :email, :locality, :phone, :price_range, :property_type, :sender_name
end
