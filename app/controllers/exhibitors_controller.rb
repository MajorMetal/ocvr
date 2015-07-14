class ExhibitorsController < ApplicationController

  def index
  	@exhibitors = Exhibitor.order(:id).all
  end
  
end
