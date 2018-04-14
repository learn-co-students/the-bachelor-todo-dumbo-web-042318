require "pry"

def get_first_name_of_season_winner(data, season)
  new_arr = data[season]
  new_arr.each do |hash|
    hash.each do |description, info|
      if hash[description] == "Winner"
        return hash["name"].split[0]
      end
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, all_data|
    all_data.each do |hash|
      hash.each do |description, info|
        if hash[description] == occupation
          return hash["name"]
        end
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |season, all_data|
    all_data.each do |hash|
      hash.each do |description, info|
        if hash[description] == hometown
          counter += 1
        end
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  data.each do |season, all_data|
    all_data.each do |hash|
      hash.each do |description, info|
        if hash[description] == hometown
          return hash["occupation"]
        end
      end
    end
  end
end

def get_average_age_for_season(data, season)
  ages = []
  new_arr = data[season]
  new_arr.each do |hash|
    hash.each do |description, info|
      if description == "age"
        ages << hash[description].to_f
      end
    end
  end
  average = (ages.reduce(:+)/ages.size).round
end
