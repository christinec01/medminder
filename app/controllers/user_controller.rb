get '/' do
  p params
 erb :index
end

get '/user/new' do
  erb :'user/new'
end

post '/user' do

  user_params = params[:user]
  # TODO have real hashed passwords
  @user = User.new(name: user_params[:name], email: user_params[:email], phone_number: user_params[:phone_number], hashed_password: '')
  p @user
  if @user.save
    session[:user_id] = @user.id
    #
    # authy = Authy::API.register_user(
    # email: @user.email,
    # cellphone: @user.phone_number,
    #
    # )
    # @user.update(authy_id: authy.id)
  redirect '/'
end
end

get '/user/:id/meds' do
  #this is where I'll show a user and identify it by User.find(params[:id])
  erb :'user/show/meds'
end

# adding a med will be a partial that will exist on the main page
