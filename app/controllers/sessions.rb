post '/sessions' do
  user = User.find_by(email: params[:user][:email])
  # binding.pry
    if user && User.authenticate(user.email, params[:user][:password])
      session[:user_id] = user.id
      p "* in if" *10
      redirect '/user/:id/med'
    else
      p "* in else" *10
      @errors = "Email and Password not found. Please try again."
      erb :index
    end
  end

get '/sessions/delete' do
    session.clear
    redirect '/'
end
