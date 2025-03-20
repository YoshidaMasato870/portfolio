class CreatePlans < ActiveRecord::Migration[7.1]
  def change
    create_table :plans do |t|
      t.string :name, null: false
      t.string :image
      t.string :introduction
      t.integer :user_id

      t.timestamps
    end
  end
end
