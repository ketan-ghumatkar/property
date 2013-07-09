class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :sender_name
      t.string :country
      t.string :city
      t.string :email
      t.string :phone
      t.string :price_range
      t.string :property_type
      t.string :buying_year
      t.string :locality
      t.string :content
      t.references :user

      t.timestamps
    end
    add_index :messages, :user_id
  end
end
