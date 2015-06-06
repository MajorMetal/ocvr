class HomesController < ApplicationController

	def home
		@user = User.new
		@exhibitors = Exhibitor.limit(6)
		@speakers = Speaker.limit(6)

		@other = Sponsor.where(rank: 'Other')
		@diamond = Sponsor.where(rank: 'Diamond')
		@ruby = Sponsor.where(rank: 'Ruby')
		@media = Sponsor.where(rank: 'Media')
	end
	
	def attend
		@user = User.new
	end

	def expo
		@user = User.new
	end

end
