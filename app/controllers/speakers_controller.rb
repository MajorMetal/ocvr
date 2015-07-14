class SpeakersController < ApplicationController
  
  def index
  	@speakers = Speaker.order(:id).all
  end

end
