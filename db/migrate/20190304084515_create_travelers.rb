class CreateTravelers < ActiveRecord::Migration[5.2]
  def change
    create_table :travelers do |t|
      t.string :first_name
      t.string :last_name
      t.string :photo_url
      t.string :biography

      t.timestamps
    end
  end
end
