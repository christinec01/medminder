get '/' do
 erb :index
end

get '/user/new' do
  erb :'user/new'
end

post '/user/new' do
  # here is where i'll create a new User
  # User.create(name: params[:name], etc..)
  #then a redirect to '/'
end

get '/user/:id/meds' do
  #this is where I'll show a user and identify it by User.find(params[:id])
  erb :'user/show/meds'
end

# adding a med will be a partial that will exist on the main page
