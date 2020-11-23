class CreateArts < ActiveRecord::Migration[6.0]
  def change
    create_table :arts do |t|
      t.references :artist,   foreign_key: true
      t.string :image_id,     null: false
      t.integer :arttype_id,  null: false
      t.integer :arttouch_id, null: false
      t.timestamps
    end
  end
end
