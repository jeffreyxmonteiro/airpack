class Packer < ApplicationRecord
  has_one :temp_closet
  has_many :packs
  has_many :items
  has_many :bookings
  has_many :packer_reviews, through: :bookings
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  after_create :make_temp_closet

  def fullname
    return "#{first_name} #{last_name}"
  end

  private

  def make_temp_closet
    TempCloset.create(packer: self)
  end
end
