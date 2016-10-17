require 'dotenv'
Dotenv.load
require_relative '../notifier'

namespace :text do
  desc "Send text"
  task :send_text do
    p ENV['ACCOUNT_SID']
    p ENV['AUTH_TOKEN']
    p ENV['ACCOUNT_PHONE']
    p ENV['ADMIN_PHONE']
    Notifier::send_sms_notification
  end
end
