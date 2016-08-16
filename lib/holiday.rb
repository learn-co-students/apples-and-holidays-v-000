require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter][:christmas] << supply.to_s
  holiday_hash[:winter][:new_years] << supply.to_s
end
 

def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day][1] = supply.to_s
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  supply_array = []
    holiday_hash[:winter].collect do |supply| 
      supply_array << supply
    end
  supply_array.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |key, value|
    puts "#{key.to_s.capitalize}:"
      value.each do |holiday, supply|
        puts "  #{holiday.to_s.split("_").map{|holiday| holiday.capitalize}.join(" ")}: #{supply.join (', ')}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
holiday_array = []
 holiday_hash.map do |key, value|
  value.map do |holiday, supply| 
   if supply.include?("BBQ")
    holiday_array << holiday
   end
  end
 end
 holiday_array
end








