class EditColumnType < ActiveRecord::Migration
  def change
    change_column :med_reminders, :phone_number, :string
  end
end
