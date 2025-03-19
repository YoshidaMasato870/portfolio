class CreatePlans < ActiveRecord::Migration[7.1]
  def change
    create_table :plans do |t|
      t.string :plan_name, null: false
      t.string :plan_image
      t.string :plan_introduction
      t.integer :user_id

      t.timestamps
    end
  end
end
