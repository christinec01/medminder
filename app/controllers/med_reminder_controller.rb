post '/send_sms_text' do
  Notifier::send_sms_notification("(415) 630-0720", "Hi my friend!" )
end


get '/user/:id/med' do


get '/med_minder' do
  erb  :'user/main'

end
