# Clear DB before seeding (NOT TO BE USED IN PRODUCTION)
Airport.delete_all
Flight.delete_all

# Seed DB

airport_codes = ['SFO', 'LAX', 'SAN', 'NYC']

airport_codes.each do |code|
  Airport.create!(code: code)
end

airport_ids = Airport.all.map(&:id)

50.times {
  from_id = airport_ids.sample
  to_id = airport_ids.reject{ |id| id == from_id }.sample
  datetime = Time.now+rand(15000..200000)
  duration = rand(14400..571600)

  Flight.create!(from_airport_id: from_id, 
                 to_airport_id:   to_id, 
                 datetime: datetime,
                 duration: duration)

  Flight.create!(from_airport_id: to_id, 
                 to_airport_id:   from_id, 
                 datetime: datetime,
                 duration: duration)
}