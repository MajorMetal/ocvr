class HomesController < ApplicationController

	def home
		@diamond = Sponsor.order(:id).where(rank: 'Diamond')
		@ruby = Sponsor.order(:id).where(rank: 'Ruby')
		@emerald = Sponsor.order(:id).where(rank: 'Emerald')
		@community = Sponsor.order(:id).where(rank: 'Community')
		@media = Sponsor.order(:id).where(rank: 'Media')
		@broadcaster = Sponsor.order(:id).where(rank: 'Broadcasting')


		@exhibitors = Exhibitor.order(:id).where(is_featured: true)
		@speakers = Speaker.order(:id).where(is_featured: true)
	end

	def expo
	end

	def maps
	end

	def stream
	end

end
