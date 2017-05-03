class Marker < ActiveRecord::Base
	validates_uniqueness_of :longitude
	validates_uniqueness_of :latitude
end
