class HomeController < ApplicationController
  def index
  	@tablets = Tablet.all
  	@masthead = HomeMasterhead.where(display: true).first
  end
end
