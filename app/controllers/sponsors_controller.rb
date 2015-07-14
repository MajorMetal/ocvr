class SponsorsController < ApplicationController

  def index
  	@diamond = Sponsor.order(:id).where(rank: 'Diamond')
		@ruby = Sponsor.order(:id).where(rank: 'Ruby')
		@emerald = Sponsor.order(:id).where(rank: 'Emerald')
		@community = Sponsor.order(:id).where(rank: 'Community')
		@media = Sponsor.order(:id).where(rank: 'Media')
		@broadcaster = Sponsor.order(:id).where(rank: 'Broadcasting')
  end

  def buy
  end

end
