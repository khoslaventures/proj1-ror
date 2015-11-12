class AddHealthToPokemons < ActiveRecord::Migration
  def change
    add_column :pokemons, :hp, :integer
  end
end
