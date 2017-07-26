require 'pry'
require 'active_record'

## Connect to the database
require_relative 'db/connection'

# Load models
require_relative 'models/pokemon'
require_relative 'models/trainer'

puts "There are #{Trainer.count} trainers"
puts "There are #{Pokemon.count} pokemon"

puts "*" * 50

puts "The first trainer is #{Trainer.first.name}."
puts "He has #{Trainer.first.pokemons.count} pokemon."

binding.pry

puts "this line fixes binding.pry bug"
