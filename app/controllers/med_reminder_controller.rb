post '/send_sms_text' do
  Notifier::send_sms_notification("(415) 630-0720", "Hi my friend!" )
end

<<<<<<< HEAD
get '/user/:id/med' do
 
=======
get '/med_minder' do
  erb  :'user/main'
>>>>>>> ced8a7edf7e9f9762b2dcff3e376834158cfee67
end
