class AddUserNameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :user_name, :string
  end

  add_index :users, :user_name, unique: true
end
