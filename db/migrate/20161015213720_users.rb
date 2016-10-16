class Users < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email, :null => false
      t.integer :phone_number, :null => false
      t.string :hashed_password, :null => false
    end
  end
end
