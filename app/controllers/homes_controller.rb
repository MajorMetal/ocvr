class HomesController < ApplicationController

	def home
		@users = User.new
	end

	def expo
		@users = User.new
	end
	
end
