require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_supplies.each {|seasons, holidays| 
    holidays.each {|holidays, supplies| if holidays == :christmas || :new_years then supplies << supply end }
  } 
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_supplies.each {|seasons, holidays| 
    holidays.each {|holidays, supplies| if holidays == :memorial_day then supplies << supply end }
  } 
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each {|season, holidays| puts "#{season.capitalize}:"
    holidays.each do |holiday, supplies| puts "  #{holiday.to_s.split("_").map(&:capitalize).join(" ")}: #{supplies.join(', ')}" end
  }
end

def all_holidays_with_bbq(holiday_hash)
  bbq_hols = []
  holiday_hash.each {|season, holidays| 
    holidays.each {|holiday, supplies| if supplies.include?("BBQ") then bbq_hols << holiday end }
  }
  bbq_hols
end







