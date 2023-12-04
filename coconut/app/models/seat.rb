class Seat < ApplicationRecord
  belongs_to :flight
  
  validates_presence_of :name, :baggage
  validates_numericality_of :baggage
  validate :validate_baggage_allowance
  validate :validate_booking_capacity
    
  def validate_baggage_allowance
    if baggage and baggage > flight.baggage_allowance
      errors.add(:base, "Your baggage exceeds the flights baggage allowance")
    end
  end
  
  def validate_booking_capacity
    if flight.seats.size >= flight.capacity
      errors.add(:base, "The booking capacity is full")
    end
  end
end
