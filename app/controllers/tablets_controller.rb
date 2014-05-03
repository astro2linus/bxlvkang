class TabletsController < ApplicationController
  def show
    @tablet = Tablet.find(params[:id])
    @tablets = Tablet.all - [@tablet]
  end
end
