class SpeakersController < ApplicationController
  
  def index
  	@speakers = Speaker.all
    @user = User.new
  end

  def new
  	@speaker = Speaker.new
  end

  def create
  	@speaker = Speaker.create(speaker_params)

  	if @speaker.save
  		redirect_to root_path
  	else
  		render :new
  	end
  end

  private
  	def speaker_params
  		params.require(:speaker).permit(:name, :title, :company, :bio, :img)
  	end
end
