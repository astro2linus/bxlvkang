class HomeController < ApplicationController
  def index
  	@tablets = Tablet.sorted_and_visible
  	@masthead = HomeMasterhead.where(display: true).first
  end
end
