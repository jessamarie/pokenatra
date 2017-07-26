require 'active_record'
require 'sinatra'
require 'sinatra/reloader'

require_relative 'db/connection'

require_relative 'models/pokemon'
require_relative 'models/trainer'

require_relative 'routes/pokemon'
require_relative 'routes/trainers'

get '/' do
  erb :index
end
