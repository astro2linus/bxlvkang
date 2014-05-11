class HomeMasterhead < ActiveRecord::Base
	mount_uploader :image, HomeMasterheadUploader
	validates_presence_of :header_text, :byline_text
end
