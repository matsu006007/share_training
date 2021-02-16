class CreateTroubles < ActiveRecord::Migration[6.0]
  def change
    create_table :troubles do |t|
      t.string :trouble_title,     null: false
      t.text :trouble_content,     null: false
      t.string :trouble_data_id,   null: false
      t.string :another_trouble,   null: false
      t.references :user,          foreign_key: true
      t.timestamps
    end
  end
end
