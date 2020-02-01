require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
 holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
holiday_hash[:winter][:memorial_day] << supply
end


def add_supply_to_memorial_day(holiday_hash, supply)
holiday_hash[:spring].values.each do |item|
  item >> supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holiday|
    puts season.to_s.capitalize + ':'
    holiday.each do |name, supplies|
      puts '  ' + name.to_s.split("_").each {|w| w.capitalize!}.join(" ") + ': ' + supplies.join(", ")
    end
  end
end

bbq = []
def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
   holiday_hash.each do |season, holidays|
     holidays.each do |supply, holiday|
     if supply.include? ="BBQ"
    bbq << holiday
  end
end