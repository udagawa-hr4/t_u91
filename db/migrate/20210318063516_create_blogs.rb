class CreateBlogs < ActiveRecord::Migration[6.0]
  def change
    create_table :blogs do |t|
      t.string :title,        null: false
      t.text :content
      t.datetime :start_time, null: false
      t.references :user,     null: false, foreign_key: true
      
      t.timestamps

    end
  end
end
