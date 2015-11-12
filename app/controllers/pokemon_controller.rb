class PokemonController < ApplicationController
  def capture
		captured_pokemon = Pokemon.find(params[:id])
		captured_pokemon.trainer_id = current_trainer.id
		captured_pokemon.save
		redirect_to '/'
	end
end
