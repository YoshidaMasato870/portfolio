class AddColumnUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :account_name, :string 
  end
end
