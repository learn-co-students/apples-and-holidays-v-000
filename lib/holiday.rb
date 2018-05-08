require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  second_supply = ''
  holiday_hash.each do |season, holiday_data|
    holiday_data.each do |holiday, supplies|
      if holiday == :fourth_of_july
        second_supply = supplies[1]
      end
    end
  end
  second_supply
end

def add_supply_to_winter_holidays(holiday_hash, supply)
   holiday_hash.each do |season, holiday_data|
    if season == :winter
      holiday_data.each do |holiday, supplies|
        holiday_data[holiday] << supply
      end
    end
  end 
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash.each do |season, holiday_data|
      holiday_data.each do |holiday, supplies|
        if holiday == :memorial_day
        holiday_data[holiday] << supply
      end
    end
  end 
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash.each do |i, holiday_data|
    if i == season
      holiday_data[holiday_name] = supply_array
    end
  end
end

def all_winter_holiday_supplies(holiday_hash)
  winter_supplies = []
  holiday_hash.each do |season, holiday_data|
    if season == :winter
      holiday_data.each do |holiday, supplies|
        supplies.each do |i|
          winter_supplies << i
        end
      end
    end
  end
  winter_supplies
end

def all_supplies_in_holidays(holiday_hash)
  season_string = ''
  holiday_hash.each do |season, holiday_data|
    season_string = season.to_s.capitalize!
    puts "#{season_string}:"
    holiday_data.each do |holiday, supplies|
      holiday_string = holiday.to_s.split("_")
      holiday_string.each do |i|
        i.capitalize!
      end
      holiday_string = holiday_string.join(" ")
      puts "  #{holiday_string}: #{supplies.join(", ")}"
    end
  end  
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  bbq_holidays = []
  holiday_hash.each do |season, holiday_data|
      holiday_data.each do |holiday, supplies|
        if supplies.include?("BBQ")
          bbq_holidays << holiday
        end
      end
    end
  bbq_holidays
end







