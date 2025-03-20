class AddAreaPlans < ActiveRecord::Migration[7.1]
  def change
    add_column :plans, :area_id, :integer
  end
end
