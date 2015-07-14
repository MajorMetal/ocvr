class WorkersController < ApplicationController

  def index
  	@workers = Worker.order(:id).all
  end
  
end
