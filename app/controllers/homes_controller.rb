class HomesController < ApplicationController

	def home
		@user = User.new
	end

	def tester
		@user = User.new
	end

	# def expo
	# 	@users = User.new
	# end
	
end
