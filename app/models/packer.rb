class Packer < ApplicationRecord
  has_many :packs, through: :items
end
