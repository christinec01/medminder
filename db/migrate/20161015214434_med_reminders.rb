class MedReminders < ActiveRecord::Migration
  def change
    create_table :med_reminders do |t|
      t.integer :users_id
      t.string :hashed_password, :null => false
    end
  end
end
