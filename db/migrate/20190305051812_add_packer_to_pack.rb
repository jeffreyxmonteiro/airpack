class AddPackerToPack < ActiveRecord::Migration[5.2]
  def change
    add_reference :packs, :packer, foreign_key: true
  end
end
