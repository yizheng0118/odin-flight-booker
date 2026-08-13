airports = [
  "JFK", # New York
  "LAX", # Los Angeles
  "ORD", # Chicago
  "ATL", # Atlanta
  "DFW", # Dallas
  "DEN", # Denver
  "SEA", # Seattle
  "SFO", # San Francisco
  "MIA", # Miami
  "BOS", # Boston
  "MSP", # Minneapolis
  "DTW", # Detroit
  "PHX", # Phoenix
  "LAS", # Las Vegas
  "IAH", # Houston
  "MCO", # Orlando
  "CLT", # Charlotte
  "PHL", # Philadelphia
  "DCA", # Washington, D.C.
  "SAN"  # San Diego
]
flights = [
  {
    departure_airport_id: 1,  # JFK
    arrival_airport_id: 2,    # LAX
    date: "2026-09-01",
    duration: 360
  },
  {
    departure_airport_id: 2,  # LAX
    arrival_airport_id: 1,    # JFK
    date: "2026-09-02",
    duration: 330
  },
  {
    departure_airport_id: 3,  # ORD
    arrival_airport_id: 4,    # ATL
    date: "2026-09-03",
    duration: 120
  },
  {
    departure_airport_id: 4,  # ATL
    arrival_airport_id: 5,    # DFW
    date: "2026-09-04",
    duration: 150
  },
  {
    departure_airport_id: 6,  # DEN
    arrival_airport_id: 7,    # SEA
    date: "2026-09-05",
    duration: 165
  },
  {
    departure_airport_id: 8,  # SFO
    arrival_airport_id: 9,    # MIA
    date: "2026-09-06",
    duration: 325
  },
  {
    departure_airport_id: 10, # BOS
    arrival_airport_id: 3,   # ORD
    date: "2026-09-07",
    duration: 155
  },
  {
    departure_airport_id: 11, # MSP
    arrival_airport_id: 12,  # DTW
    date: "2026-09-08",
    duration: 90
  },
  {
    departure_airport_id: 13, # PHX
    arrival_airport_id: 14,  # LAS
    date: "2026-09-09",
    duration: 70
  },
  {
    departure_airport_id: 15, # IAH
    arrival_airport_id: 16,  # MCO
    date: "2026-09-10",
    duration: 145
  },
  {
    departure_airport_id: 17, # CLT
    arrival_airport_id: 18,  # PHL
    date: "2026-09-11",
    duration: 105
  },
  {
    departure_airport_id: 19, # DCA
    arrival_airport_id: 20,  # SAN
    date: "2026-09-12",
    duration: 285
  },
  {
    departure_airport_id: 1,  # JFK
    arrival_airport_id: 3,   # ORD
    date: "2026-09-13",
    duration: 150
  },
  {
    departure_airport_id: 2,  # LAX
    arrival_airport_id: 7,   # SEA
    date: "2026-09-14",
    duration: 155
  },
  {
    departure_airport_id: 4,  # ATL
    arrival_airport_id: 9,   # MIA
    date: "2026-09-15",
    duration: 115
  },
  {
    departure_airport_id: 5,  # DFW
    arrival_airport_id: 6,   # DEN
    date: "2026-09-16",
    duration: 125
  },
  {
    departure_airport_id: 10, # BOS
    arrival_airport_id: 19,  # DCA
    date: "2026-09-17",
    duration: 90
  },
  {
    departure_airport_id: 3,  # ORD
    arrival_airport_id: 11,  # MSP
    date: "2026-09-18",
    duration: 90
  },
  {
    departure_airport_id: 16, # MCO
    arrival_airport_id: 1,   # JFK
    date: "2026-09-19",
    duration: 165
  },
  {
    departure_airport_id: 20, # SAN
    arrival_airport_id: 8,   # SFO
    date: "2026-09-20",
    duration: 90
  }
]

airports.each do |a|
  Airport.create!(name:a)
end

flights.each do |f|
  Flight.create!(f)
end

