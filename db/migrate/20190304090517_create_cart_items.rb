class CreateCartItems < ActiveRecord::Migration[5.2]
  def change
    create_table :cart_items do |t|
      t.string :cartable_type
      t.string :cartable_id
      t.references :cart

      t.timestamps
    end
  end
end
