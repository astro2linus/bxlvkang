class Tablet < ActiveRecord::Base
	validates_presence_of :headline, :short_description, :long_description
	mount_uploader :image, TabletImageUploader
end
