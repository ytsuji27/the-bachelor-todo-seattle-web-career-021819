def get_first_name_of_season_winner(data, season)
  first_name = ""
  data[season].each do |contestant|
    if contestant["status"] == "Winner"
      name = contestant["name"]
      first_name = name.split[0]
    end
  end
  first_name
end

def get_contestant_name(data, occupation)
  data.each do |season, contestant_array|
    contestant_array.each do |attributes|
      if attributes["occupation"] == occupation
        return attributes["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |season, contestant_array|
    contestant_array.each do |attributes|
      if attributes["hometown"] == hometown
        count += 1
      end
    end
  end
  count
end

def get_occupation(data, hometown)
  data.each do |season, contestant_array|
    contestant_array.each do |attributes|
      if attributes["hometown"] == hometown
        return attributes["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  ages = []
  data[season].each do |contestants|
    ages << contestants["age"].to_i
  end
  ages.inject{ |sum, el| sum + el } / ages.size
  ages.size
end
