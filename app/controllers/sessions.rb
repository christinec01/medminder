get '/sessions/new' do
  redirect '/'
end

post '/sessions' do
  user = User.find_by(email: params[:email])

    if user && User.authenticate(user.email, params[:password])
      session[:user_id] = user.id
      redirect '/'
    else
      @errors = "Email and Password not found. Please try again."
      erb :index
    end
  end

get '/sessions/delete' do
    session.clear
    redirect '/'
end
