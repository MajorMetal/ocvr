class ExhibitorsController < ApplicationController

  def index
  	@exhibitors = Exhibitor.all
    @user = User.new
  end

  def new
  	@exhibitor = Exhibitor.new
  end

  def create
  	@exhibitor = Exhibitor.create(exhibitor_params)

  	if @exhibitor.save
  		redirect_to root_path
  	else
  		render :new
  	end
  end

  private
  	def exhibitor_params
  		params.require(:exhibitor).permit(:name, :bio, :img)
  	end

end
