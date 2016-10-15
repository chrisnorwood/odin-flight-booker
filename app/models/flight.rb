class Flight < ApplicationRecord
  belongs_to :from_airport, class_name: 'Airport', foreign_key: 'from_airport_id'
  belongs_to :to_airport,   class_name: 'Airport', foreign_key: 'to_airport_id'

  validates :from_airport_id, presence: true
  validates :to_airport_id,   presence: true
  validates :datetime,        presence: true
  validates :duration,        presence: true

  def formatted_date
    datetime.strftime("%Y/%m/%d")
  end

  def self.select_dates
    self.pluck("distinct date(datetime)")
  end

  def self.search(search_params)
    date         = search_params[:date].to_datetime
    date_end     = date.tomorrow
    to_airport   = search_params[:to_airport]
    from_airport = search_params[:from_airport]
   
    Flight.where(from_airport_id: from_airport, to_airport_id: to_airport,
                 datetime: date..date_end)
  end
end
