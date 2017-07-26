require 'active_record'
require 'ffaker'
require 'pg'
require_relative 'connection'
require_relative '../models/pokemon'
require_relative '../models/trainer'

Trainer.destroy_all
Pokemon.destroy_all

def create_trainer name, img_url, team_id
  Trainer.create(
    name: name,
    level: rand(10),
    img_url: img_url,
    team_id: team_id
  )
end

def create_pokemon name, poke_type, img_url, trainer_id
  Pokemon.create(
    name: name,
    cp: rand(800),
    poke_type: poke_type,
    img_url: img_url,
    trainer_id: trainer_id)
end

create_trainer("Ash", "text", 1)
create_trainer("Brock", "text", 1)
create_trainer("Misty", "text", 1)
create_trainer("May", "text", 1)
create_trainer("Jessa", "text", 1)


create_pokemon("Squirtle", "water", "https://img.pokemondb.net/artwork/squirtle.jpg", 3)
create_pokemon("Pikachu", "lightning", "https://img.pokemondb.net/artwork/pikachu.jpg", 3)
create_pokemon("Bulbasaur", "grass",  "https://img.pokemondb.net/artwork/bulbasaur.jpg", 2)
create_pokemon("Nidoking", "poison ground", "https://img.pokemondb.net/artwork/nidoking.jpg", 1 )
create_pokemon("Gengar", "ghost poison", "https://img.pokemondb.net/artwork/gengar.jpg", 4)
create_pokemon("Blastoise", "water", "https://img.pokemondb.net/artwork/blastoise.jpg", 5)
