class CartItem < ApplicationRecord
  belongs_to :cartable, polymorphic: true
end
