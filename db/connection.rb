ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :database => "pokemondb"
)

if defined? Sinatra
	after do
	  ActiveRecord::Base.connection.close
	end
end
