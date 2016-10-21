get '/medminders' do
  @medminders = MedReminder.all
 erb :index
end

post '/send_sms_text' do
  Notifier::send_sms_notification(ENV['MY_PHONE'], params[:message] )
end

post '/medminders' do
  @user = User.find(session[:user_id])
  p params
  @medminder = @user.med_reminders.create!(name: params[:medminder][:name], phone_number: params[:medminder][:phone_number], time: params[:medminder][:time])
  # if !@medminder.empty?
    redirect "/users/#{@user.id}"
  # else
    # redirect '/'
  # end

end

get '/medminders/new' do
  erb :'meds/new'
end


delete '/users/:user_id/medminders/:id' do
  @user = User.find(params[:user_id])
  @medminder = MedReminder.find(params[:id])
  @medminder.destroy
  redirect "/users/#{@user.id}"
end
