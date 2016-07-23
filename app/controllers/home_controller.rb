class HomeController < ApplicationController	
	def index
		@results = Quest.where("attack = '12'")
	end
end