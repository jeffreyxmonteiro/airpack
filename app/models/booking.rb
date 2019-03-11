class Booking < ApplicationRecord
  belongs_to :traveler
  belongs_to :packer
  has_many :booking_items

  def complete_booking
    update(completed: true)
    objects = booking_items.map(&:bookable)
    objects.each { |object| object.update(booked: false) }
  end
end
