class HomesController < ApplicationController

	def home
		@user = User.new
		@exhibitors = Exhibitor.where(is_featured: true)
		@speakers = Speaker.limit(6)

		@other = Sponsor.where(rank: 'Other')
		@diamond = Sponsor.where(rank: 'Diamond')
		@ruby = Sponsor.where(rank: 'Ruby')
		@community = Sponsor.where(rank: 'Community')
		@media = Sponsor.where(rank: 'Media')
	end

	def expo
		@user = User.new
	end

end
