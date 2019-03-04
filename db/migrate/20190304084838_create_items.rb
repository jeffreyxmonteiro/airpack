class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name
      t.string :description
      t.string :category
      t.string :style
      t.string :size
      t.string :price
      t.string :photo_url
      t.references :pack, foreign_key: true
      t.references :packer, foreign_key: true

      t.timestamps
    end
  end
end
