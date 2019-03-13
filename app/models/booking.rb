class Booking < ApplicationRecord
  belongs_to :traveler
  belongs_to :packer
  has_many :booking_items
  has_one :packer_reviews

  def complete_booking
    update(completed: true)
    objects = booking_items.map(&:bookable)
    objects.each { |object| object.update(booked: false) }
  end

  def cost
    booking_objects = booking_items.map(&:bookable)
    return booking_objects.map(&:price).sum
  end
end
