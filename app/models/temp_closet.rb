class TempCloset < ApplicationRecord
  belongs_to :packer
  has_many :temp_closet_items

  def clear_closet
    temp_closet_items.each(&:destroy)
  end
end
