class MedReminders < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :user

  validates :name, presence: true
  validates :phone_number, presence: true
  validates :time, presence: true
end
