class HomeController < ApplicationController

	def index
		@highscores = Player.all.order(score: :asc).limit(5)

	end
	
end
