
get '/users' do
  user = User.all
  erb :index
end

get '/users/new' do
  erb :'users/new', layout:false
end

post '/users' do
  user_params = params[:user]

  user = User.new(name: user_params[:name],
                  email: user_params[:email],
                  phone_number: user_params[:phone_number],
                  password_digest: user_params[:password])

    if user.save
    p "*"*20
      session[:user_id] = user.id
    else
      @errors
    end
      redirect "/users/#{user.id}"
end

get '/users/:id' do
  #this is where I'll show a user and identify it by User.find(params[:id])
  @medminders = MedRemindereminder.all
  @user = User.find(params[:id])
  erb :'users/show'
end


# adding a med will be a partial that will exist on the main page
