require 'BCrypt'
class User < ActiveRecord::Base
  # Remember to create a migration!
  has_many :med_reminders

  validates :name, presence: true
  # validates :email, :hashed_password, presence: true
  # validates :email, uniqueness: true
  validates :phone_number, presence:true
  #
  # include BCrypt
  #
  # def password
  #   @password ||= Password.new(hashed_password)
  # end
  #
  # def password=(pass)
  #   @password = Password.create(pass)
  #   self.hashed_password = @password
  # end
  #
  #     # e.g., User.authenticate('jess@devbootcamp.com', 'apples123')
  #  def self.authenticate(input_email, input_password)
  #    # if email and password correspond to a valid user, return that user
  #    current_user = self.find_by(email: input_email)
  #    return current_user if current_user.password == input_password
  #    # otherwise, return nil
  #    nil
  #  end
end