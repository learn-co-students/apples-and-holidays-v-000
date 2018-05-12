require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter].each do |holiday, supplies|
    supplies << supply
  end
end
def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
end
  

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holidays|
    puts "#{season.capitalize}:"
    holidays.each do |holiday_name, supplies|
      puts "  #{holiday_name.to_s.split("_").collect {|holiday_name_string| holiday_name_string.capitalize}.join(" ")}: #{supplies.join(", ")}"
    end
  end
end


def all_holidays_with_bbq(holiday_hash)
  holiday_hash.map do |season, holidays|
    holidays.map do |holiday, supplies|
      supplies.include?("BBQ") ? holiday: nil 
    end
  end.flatten.compact
end
 







