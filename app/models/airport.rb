class Airport < ApplicationRecord
  before_save :upcase_code
  validates :code, presence: true, length: { is: 3 }

  has_many :departing_flights, class_name:  'Flight', 
                               foreign_key: 'from_airport_id'
  has_many :arriving_flights,  class_name:  'Flight',
                               foreign_key: 'to_airport_id'
  private

    def upcase_code
      code.upcase!
    end
end