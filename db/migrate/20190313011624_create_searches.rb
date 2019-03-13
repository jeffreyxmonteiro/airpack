class CreateSearches < ActiveRecord::Migration[5.2]
  def change
    create_table :searches do |t|
      t.string :size
      t.string :style

      t.timestamps
    end
  end
end
