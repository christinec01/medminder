get '/sessions/login' do
  p "hi"*30
 erb :'sessions/login'
end

post '/sessions/login' do
  redirect '/sessions/login'
end

post '/sessions' do
  user = User.find_by(email: params[:user][:email])

    if user && User.authenticate(user.email, params[:user][:password])
      session[:user_id] = user.id
      p "* in if" *10
      redirect "/users/#{user.id}"
    else
      @errors = "Woops! we couldn't find you, try again!"
      erb :index
    end
  end

get '/sessions/delete' do
    session[:user_id] = nil
    redirect '/'
end
