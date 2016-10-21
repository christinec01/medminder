class Medreminders < ActiveRecord::Migration
  def change
  create_table :med_reminders do |t|
      t.string :name
      t.integer :phone_number
      t.string :time

    end
  end
end
