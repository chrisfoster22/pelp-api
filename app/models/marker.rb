class Marker < ActiveRecord::Base
	validates_uniqueness_of :longitude
	validates_uniqueness_of :latitude

	validates_presence_of :longitude
	validates_presence_of :latitude
	validates_presence_of :name
	validates_presence_of :yelp_id
	validates_presence_of :marker_type
end
