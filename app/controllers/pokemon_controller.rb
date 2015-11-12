class PokemonController < ApplicationController
  def capture
		captured_pokemon = Pokemon.find(params[:id])
		captured_pokemon.trainer_id = current_trainer.id
		captured_pokemon.save
		redirect_to '/'
	end

  def damage
		damaged_pokemon = Pokemon.find(params[:id])
		damaged_pokemon.hp = damaged_pokemon.hp - 10
		damaged_pokemon.save
		damaged_pokemon.destroy if damaged_pokemon.hp <= 0
		redirect_to '/trainers/' + damaged_pokemon.trainer_id.to_s
	end

  def damage
		damaged_pokemon = Pokemon.find(params[:id])
		damaged_pokemon.hp -= 10
		damaged_pokemon.save
		damaged_pokemon.destroy if damaged_pokemon.hp <= 0
		redirect_to '/trainers/' + damaged_pokemon.trainer_id.to_s
	end

	def create
		@pokemon = Pokemon.create(pokemon_params)
    if @pokemon.save

    	@pokemon.trainer_id = current_trainer.id
    	@pokemon.level = 1
    	@pokemon.hp = 100
   		render current_trainer
    end
    else
      render "new"
      flash[:error] = @pokemon.errors.full_messages.to_sentence
    end
	end

	def pokemon_params
    	params.permit(:name)
  end
end
