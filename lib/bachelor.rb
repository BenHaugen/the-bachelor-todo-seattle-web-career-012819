require "pry"

def get_first_name_of_season_winner(data, season)
  data[season].each do |people|
    people.each do |k, v|
      if v == "Winner"
        full_name = people["name"]
        return full_name.split(" ").first
      end
    end
  end
end

def get_contestant_name(data, occupation)
   data.each do |season, info|
    info.each do |people|
      people.each do |key,value|
        if value == occupation
          return people["name"]
        end
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0 
  data.each do |season, info|
    info.each do |people|
    people.each do |key, value|
    if value == hometown
      counter = counter + 1
        end
      end
    end
  end
  return counter
end

def get_occupation(data, hometown)
  data.each do |season, info|
    info.each do |people|
      people.each do |key,value|
        if value == hometown
          return people["occupation"]
        end
      end
    end
  end
end

def get_average_age_for_season(data, season)
  age_array = []
  data[season].each do |stuff|
    stuff.each do |key, value|
      if key == "age"
        age_array << value.to_i 
      end
    end
  end
  sum = 0
  age_array.each do |num|
    sum += num
  end
  #binding.pry
  avg_age = sum.to_f / age_array.length
  avg_age.round
  #binding.pry
end
