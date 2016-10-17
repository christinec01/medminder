post '/send_sms_text' do
  Notifier::send_sms_notification("(425) 761-2220", "I'm here!" )
end
