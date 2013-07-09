class CreateRequirements < ActiveRecord::Migration
  def change
    create_table :requirements do |t|
      t.string :type
      t.string :subtype
      t.string :city
      t.string :min_area
      t.string :max_area
      t.string :min_budget
      t.string :max_budget
      t.references :user

      t.timestamps
    end
    add_index :requirements, :user_id
  end
end
