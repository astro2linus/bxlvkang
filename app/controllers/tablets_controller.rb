class TabletsController < ApplicationController
  def show
    @tablet = Tablet.find(params[:id])
  end
end
