class Search < ApplicationRecord
  def self.sizes
    return ['XS', 'S', 'M', 'L', 'XL']
  end

  def self.styles
    return ['Jock', 'Prepster', 'Hipster', 'Corporate', 'Hip hop', 'Outdoorsy', 'Rockstar', 'Vintage']
  end
end
