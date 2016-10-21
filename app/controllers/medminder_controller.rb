get '/medminders' do
  @medminders = MedReminder.all
 erb :index
end

post '/send_sms_text' do
  Notifier::send_sms_notification("(415) 630-0720", "Hi my friend!" )
end

post '/medminders' do
  @user = User.find(session[:user_id])
  @medminder = MedReminder.create(name: params[:medminder][:name], phone_number: params[:medminder][:phone_number], time: params[:medminder][:time])
    erb :'users/show'
end

get '/medminders/new' do
  erb :'meds/new'
end

get '/user/:id/med' do

end

delete '/users/:user_id/medminders/:id' do
  @user = User.find(params[:user_id])
  @medminder = MedReminder.find(params[:id])
  @medminder.destroy
  redirect "/users/#{@user.id}"
end
