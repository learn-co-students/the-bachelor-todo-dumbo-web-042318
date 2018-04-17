def get_first_name_of_season_winner(data, season)
  # code here
  data[season].map do |contestant|
    if contestant["status"] == "Winner"
      contestant["name"].partition(" ").first
    end
  end.compact.first
end

def get_contestant_name(data, occupation)
  # code here
  data.map do |season, contestants|
    contestants.map do |contestant|
      contestant["name"] if contestant["occupation"] == occupation
    end
  end.flatten.compact.first
end

def count_contestants_by_hometown(data, hometown)
  # code here
  num_contestants = 0

  data.each do |season, contestants|
    contestants.each do |contestant|
      num_contestants += 1 if contestant["hometown"] == hometown
    end
  end

  num_contestants
end

def get_occupation(data, hometown)
  # code here
  data.map do |season, contestants|
    contestants.find{|contestant| contestant["hometown"] == hometown}
  end.compact.first["occupation"]
end

def get_average_age_for_season(data, season)
  # code here
  sum = 0.0

  data[season].each{|contestant| sum += contestant["age"].to_f}

  (sum / data[season].length).round
end
