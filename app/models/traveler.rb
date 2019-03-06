class Traveler < ApplicationRecord
  has_one :cart
  has_many :bookings
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  after_create :make_cart

  private

  def make_cart
    Cart.create(traveler: self)
  end
end
