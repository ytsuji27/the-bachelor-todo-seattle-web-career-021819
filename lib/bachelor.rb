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
  data.each do |season, contestant_attributes|
end

def count_contestants_by_hometown(data, hometown)
  # code here
end

def get_occupation(data, hometown)
  # code here
end

def get_average_age_for_season(data, season)
  # code here
end
