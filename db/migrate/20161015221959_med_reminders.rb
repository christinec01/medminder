class MedReminders < ActiveRecord::Migration
  def change
    create_table :med_reminders do |t|
      t.string :name
      t.integer :phone_number
      t.datetime :time

    end
  end
end
