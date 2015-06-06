class HomesController < ApplicationController

	def home
		@user = User.new
		@diamond = Sponsor.where(rank: 'Diamond')
		@media = Sponsor.where(rank: 'Media')
		@exhibitors = Exhibitor.limit(6)
		@speakers = Speaker.all
	end
	
	def attend
		@user = User.new
	end

	def expo
		@user = User.new
	end

end
