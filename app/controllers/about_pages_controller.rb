class AboutPagesController < ApplicationController
  def index
  	@content = AboutPages.first
  end
end
