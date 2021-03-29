class CreateProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :family_name
      t.integer :phone_number
      t.date   :birthday
      t.text :introduction
      
      t.timestamps
      t.references :user,       null: false,foreign_key: true
    end
  end
end
