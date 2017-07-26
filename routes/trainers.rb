# READ all trainers
get '/trainers' do
  @trainers = Trainer.all
  erb :'trainers/index'
end

# READ create trainers form from user
get '/trainer/new' do
  erb :'trainers/new'
end

# CREATE new trainers
post '/trainers' do
  @trainer = Trainer.create(params[:trainer])
  redirect "/trainers/#{@trainer.id}"
end

# READ one trainers
get '/trainers/:id' do
  @trainer = Trainer.find(params[:id])
  erb :'trainers/show'
end

# READ update trainers form from user
get '/trainers/:id/edit' do
  @trainer = Trainer.find(params[:id])
  erb :'trainers/edit'
end

# UPDATE trainers
put '/trainers/:id' do
  @trainer = Trainer.find(params[:id])
  @trainer.update(params[:trainer])
  redirect "/trainers/#{@trainer.id}"
end

# DELETE trainers by id
delete '/trainers/:id' do
  @trainer = Trainer.find(params[:id])
  @trainer.destroy
  redirect '/trainers'
end
