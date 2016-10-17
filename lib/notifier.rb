require 'dotenv'
require 'twilio-ruby'
Dotenv.load

module Notifier
  def self.send_sms_notification(phone_number, message)
    # alert_message = "It's time to take your meds!"
    client = Twilio::REST::Client.new ENV['ACCOUNT_SID'], ENV['AUTH_TOKEN']

    # phone_number = ENV['ADMIN_PHONE']
    send_sms(client, phone_number, message)
  end


  def self.send_sms(client,phone_number, alert_message)
    twilio_number = ENV['ACCOUNT_PHONE']
    message = client.account.messages.create(
    from: twilio_number,
    to: phone_number,
    body: alert_message,

    )
    puts "An sms notifying the last application error was "\
    "sent to #{message.to[0...-4] + "******"}"
  end
  private_class_method :send_sms
end
