class TempCloset < ApplicationRecord
  belongs_to :packer
  has_many :temp_closet_items
end
