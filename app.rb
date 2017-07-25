require 'active_record'
require 'sinatra'
require 'sinatra/reloader'

require_relative 'db/connection'
require_relative 'models/pokemon'


# READ all pokemon
get '/pokemon' do
  @pokemon = Pokemon.all
  erb :'pokemon/index'
end

# READ create pokemon form from user
get '/pokemon/new' do
  erb :'pokemon/new'
end

# CREATE new pokemon
post '/pokemon' do
  @poke = Pokemon.create(params[:poke])
  redirect "/pokemon/#{@poke.id}"
end

# READ one pokemon
get '/pokemon/:id' do
  @poke = Pokemon.find(params[:id])
  erb :'pokemon/show'
end

# READ update pokemon form from user
get '/pokemon/:id/edit' do
  @poke = Pokemon.find(params[:id])
  erb :'pokemon/edit'
end

# UPDATE pokemon
put '/pokemon/:id' do
  @poke = Pokemon.find(params[:id])
  @poke.update(params[:poke])
  redirect "/pokemon/#{@poke.id}"
end

# DELETE pokemon by id
delete '/pokemon/:id' do
  @poke = Pokemon.find(params[:id])
  @poke.destroy
  redirect '/pokemon'
end
