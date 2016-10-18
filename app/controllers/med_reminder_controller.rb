post '/send_sms_text' do
  Notifier::send_sms_notification("(415) 630-0720", "Hi my friend!" )
end
