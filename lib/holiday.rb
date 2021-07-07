require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter][:christmas] << "Balloons"
  holiday_hash[:winter][:new_years] << "Balloons"
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply
end


def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |seasons, holidays_and_supplies|
    season_string = seasons.to_s
      cap_season = season_string.capitalize!
        puts "#{cap_season}:"
        
    holidays_and_supplies.each do |holidays, supplies|
      puts "  #{holidays.to_s.split('_').map {|holiday| holiday.capitalize}.join(' ')}: #{supplies.join(", ")}"
    end
  end 
end
  

def all_holidays_with_bbq(holiday_hash)
  new_array = [ ]
  holiday_hash.collect do |seasons, holidays|
    holidays.collect do |holiday, supply|
      if supply.include?("BBQ")
        new_array << holiday
      end
    end
  end
    new_array
end







