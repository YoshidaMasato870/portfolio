class CreateSpots < ActiveRecord::Migration[7.1]
  def change
    create_table :spots do |t|
      t.string :name
      t.string :image
      t.string :introduction
      t.integer :relation_id

      t.timestamps
    end
  end
end
