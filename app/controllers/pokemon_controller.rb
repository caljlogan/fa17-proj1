class PokemonController < ApplicationController
	def capture
		pokemon_id = params[:id]
		pokemon = Pokemon.find(pokemon_id)
		pokemon.trainer_id = current_trainer.id
		pokemon.save
	end

	def damage
		pokemon_id = params[:pid]
		pokemon = Pokemon.find(pokemon_id)
		pokemon.health = pokemon.health - 10
		pokemon.save
		if pokemon.health <= 0
			pokemon.destroy
		end
		redirect_to trainer_path(id: params[:id])
	end

	def new
		@pokemon = Pokemon.new
	end

	def create
		curr_name =  params[:pokemon][:name]
		@pokemon = Pokemon.create(name: curr_name, trainer_id: current_trainer.id, health: 100, level: 1)
		if @pokemon.valid?
			redirect_to trainer_path(id: current_trainer.id), method: :patch
		else
			flash[:error] = @pokemon.errors.full_messages.to_sentence
			redirect_to pokemon_update_form_path
		end
	end

	def update
	end
end
