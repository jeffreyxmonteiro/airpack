class Cart < ApplicationRecord
  belongs_to :traveler
  has_many :cart_items
end
