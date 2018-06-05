class ScoresController < ApplicationController


#new_score GET    /score/new(.:format) scores#new
	def new 
		@player = Player.new
	end

#POST   /score(.:format)	scores#create

	def create
		Player.create(player_params)
		redirect_to "/"
	end

	private

	def player_params
		params.require(:player).permit(:name,:score,:id)
	end

end
