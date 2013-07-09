class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.string :type
      t.string :subtype
      t.string :transaction_type
      t.string :city
      t.string :locality
      t.string :bedroom
      t.string :bathroom
      t.string :furnish
      t.string :covered_area
      t.string :plot_area
      t.string :carpet_area
      t.string :total_price
      t.string :unit_price
      t.boolean :display_price
      t.integer :floor
      t.integer :total_floor
      t.text :description
      t.string :possession_status
      t.string :spam_check
      t.references :user

      t.timestamps
    end
    add_index :properties, :user_id
  end
end
