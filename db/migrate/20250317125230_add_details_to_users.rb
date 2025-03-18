class AddDetailsToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :account_comment, :string
    add_column :users, :account_image, :string
  end
end
