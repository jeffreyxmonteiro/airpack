class CreateTempClosets < ActiveRecord::Migration[5.2]
  def change
    create_table :temp_closets do |t|
      t.references :packer, foreign_key: true

      t.timestamps
    end
  end
end
