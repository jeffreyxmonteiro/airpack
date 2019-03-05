class CreatePacks < ActiveRecord::Migration[5.2]
  def change
    create_table :packs do |t|
      t.string :name
      t.string :style
      t.string :size
      t.string :duration
      t.string :price
      t.string :photo_url
      t.string :description

      t.timestamps
    end
  end
end
