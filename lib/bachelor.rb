def get_first_name_of_season_winner(data, season)
data.each do |season_nbr, contestants|
  if season_nbr == season
    contestants.each do |contest_name|
      if contest_name["status"] == "Winner"
        return contest_name ["name"].split(" ")[0]
      end
    end
  end
end
  end


def get_contestant_name(data, occupation)
  data.each do |season_nbr, contestant|
      contestant.each do |occup_info|
        if occup_info ["occupation"] == occupation
          return occup_info["name"]
  end
end
end
end

def count_contestants_by_hometown(data, hometown)
 counter = 0
 data.each do |season_nbr, contestants|
   contestants.each do |contest_name|
     if contest_name["hometown"] == hometown
       counter += 1
     end
   end
 end
 counter
end

def get_occupation(data, hometown)
  data.each do |season_nbr, contestants|
    contestants.each do |contest_name|
      if contest_name["hometown"] == hometown
        return contest_name ["occupation"]
        break
      end
    end
end
  end

def get_average_age_for_season(data, season)
  age_tot = 0
  data[season].each do |contestants|
      age_tot +=  contestants["age"].to_i
    end
  average_age = age_tot.to_f/data[season].length
  average_age.round
end
