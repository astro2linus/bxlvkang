class HomeMasterhead < ActiveRecord::Base
	mount_uploader :image, HomeMasterheadUploader
	validates_presence_of :image, :header_text, :byline_text
end
