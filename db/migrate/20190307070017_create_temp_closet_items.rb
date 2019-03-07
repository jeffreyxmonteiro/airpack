class CreateTempClosetItems < ActiveRecord::Migration[5.2]
  def change
    create_table :temp_closet_items do |t|
      t.references :temp_closet, foreign_key: true
      t.references :item, foreign_key: true

      t.timestamps
    end
  end
end
