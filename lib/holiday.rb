require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash.each do |season, values|
    values.each do |holiday, decorations|
      if holiday == :fourth_of_july
        return decorations[1]
      end
    end
  end
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash.each do |season, values|
    values.each do |holiday, decorations|
      if holiday == :christmas || holiday == :new_years
        decorations << supply
      end
    end
  end
end

def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash.each do |season, values|
    values.each do |holiday, decorations|
      if holiday == :memorial_day
        decorations << supply
      end
    end
  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash.each do |seasons, values|
      if seasons == season
        holiday_hash[season][holiday_name] = supply_array
      end
    end
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  supplies = []
  holiday_hash.each do |seasons, holidays|
      if seasons == :winter
        holidays.each do |decorations|
          supplies << decorations
        end
      end
    end
  supplies.flatten
end


def all_supplies_in_holidays(holiday_supplies)
  holiday_supplies.each do |seasons, values|
    season_name = seasons.to_s.capitalize!
    puts "#{season_name}:"

    values.each do |holidays, decorations|
      holiday_arr = holidays.to_s.split("_")
      holiday_str =
        holiday_arr.map do |word|
          word.capitalize!
        end.join(" ")
        
      puts "  " + holiday_str + ": " + decorations.join(", ")
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  holiday_names =[]
  holiday_hash.each do |seasons, values|
    values.each do |holiday, decorations|
      if decorations.include?("BBQ")
        holiday_names << holiday
      end
    end
  end
  holiday_names
end
