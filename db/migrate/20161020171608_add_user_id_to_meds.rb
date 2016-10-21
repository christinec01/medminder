class AddUserIdToMeds < ActiveRecord::Migration
  def change
    add_column :med_reminders, :user_id, :integer
  end
end
