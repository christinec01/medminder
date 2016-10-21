
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

      session[:user_id] = user.id
    else
      @errors
    end
      redirect "/users/#{user.id}"
end

get '/users/:id' do
  #this is where I'll show a user and identify it by User.find(params[:id])
  @user = User.find(session[:user_id])
  @medminders = MedReminder.where(user_id: @user.id)
  p "*" *40
  p @medminders
  p "*" *40
  erb :'users/show'
end


# adding a med will be a partial that will exist on the main page
