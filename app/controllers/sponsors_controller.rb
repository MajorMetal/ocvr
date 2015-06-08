class SponsorsController < ApplicationController

  def index
  	@other = Sponsor.where(rank: 'Other')
    @diamond = Sponsor.where(rank: 'Diamond')
    @ruby = Sponsor.where(rank: 'Ruby')
    @community = Sponsor.where(rank: 'Community')
    @media = Sponsor.where(rank: 'Media')
    @user = User.new
  end

  def buy
    @user = User.new
  end

  def new
  	@sponsor = Sponsor.new
  end

  def create
  	@sponsor = Sponsor.create(sponsor_params)

  	if @sponsor.save
  		redirect_to root_path
  	else
  		render :new
  	end
  end

  private
  	def sponsor_params
  		params.require(:sponsor).permit(:name, :rank, :bio, :img)
  	end
end
