get '/' do
 erb :index
end

get '/user' do
  p params
  erb :user
end



post '/user' do
  user_params = params[:user]

  user = User.new(name: user_params[:name],
                  email: user_params[:email],
                  phone_number: user_params[:phone_number],
                  password: user_params[:password])
  p user
  if user.save
    session[:user_id] = @user.id
    redirect '/user/:id/med'
  else

    redirect '/'
  end

end

get '/user/:id/meds' do
  #this is where I'll show a user and identify it by User.find(params[:id])
  erb :'user/new'
end

# adding a med will be a partial that will exist on the main page
