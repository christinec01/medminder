class Users < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email, :null => false
      t.integer :phone_number, :null => false
      t.string :password_digest, :null => false
    end
  end
end
