get '/sessions/login' do
 erb :'sessions/login'
end

post '/sessions' do
  user = User.find_by(email: params[:user][:email])

    if user && User.authenticate(user.email, params[:user][:password])
      session[:user_id] = user.id
      p "* in if" *10
      redirect '/'
    else
      @errors = "Woops! we couldn't find you, try again!"
      erb :index
    end
  end

get '/sessions/delete' do
    session[:user_id] = nil
    redirect '/'
end
