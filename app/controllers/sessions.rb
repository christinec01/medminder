<<<<<<< HEAD
post '/sessions' do
  user = User.find_by(email: params[:user][:email])
  # binding.pry
    if user && User.authenticate(user.email, params[:user][:password])
      session[:user_id] = user.id
      p "* in if" *10
      redirect '/user/:id/med'
=======
get '/sessions/new' do
  redirect 'med_minder/show'
end

post '/med_minder' do
  user = User.find_by(email: params[:email])

    if user && User.authenticate(user.email, params[:password])
      session[:user_id] = user.id
      redirect 'med_minder/show'
>>>>>>> ced8a7edf7e9f9762b2dcff3e376834158cfee67
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
