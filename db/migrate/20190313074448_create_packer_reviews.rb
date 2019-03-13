class CreatePackerReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :packer_reviews do |t|
      t.string :review
      t.integer :rating
      t.references :booking, foreign_key: true

      t.timestamps
    end
  end
end
