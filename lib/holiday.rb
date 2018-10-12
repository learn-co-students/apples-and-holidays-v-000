require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
 holiday_hash[:winter].each{ |holiday,supplies| supplies << supply}
end
  
def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].map do |holiday, supplies|
  supplies
    end.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holiday|
    puts "#{season.to_s.capitalize!}:"
    holiday.each do |holiday_name, supplies|
    puts "  #{holiday_name.to_s.split("_").map {|split_names| split_names.capitalize!}.join(" ")}: #{supplies.join(", ")}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
 
  holiday_hash.map do |season, holiday|
    holiday.map do |holiday_name, supplies|
      holiday_name if supplies.include?("BBQ")
      
      end
    end.flatten.compact
  end









