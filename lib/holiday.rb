require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  holiday_supplies[:summer][:fourth_of_july][1]  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter][:christmas] = "Balloons"
  holiday_hash[:winter][:new_years] = "Balloons"
end

def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << (supply)
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = (supply_array)
  #holiday_hash[:fall][:columbus_day] = "Lights"
#  holiday_hash["season"] = "holiday_name"
#  holiday_hash["holiday_name"] = "supply_array"
  return holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
   holiday_supplies[:winter].values.flatten # return an array of all of the supplies that are used in the winter season
end

def all_supplies_in_holidays(holiday_hash)
    holiday_hash.each do |season, holyday_hash|
    puts "#{season.to_s.capitalize}:"
    holyday_hash.each do |holyday_hash, supplies|
    puts "  #{holyday_hash.to_s.split("_").collect{|word| word.capitalize}.join(" ")}: #{supplies.join(", ")}"
    end
    end
end

def all_holidays_with_bbq(holiday_hash)
  #bbq_array = []
  holiday_hash.collect do |season, holyday_hash|
    holyday_hash.collect do |holiday, supply|
    #binding.pry
    if supply.include?("BBQ")
      #binding.pry# return an array of holiday names (as symbols) where supply lists
      holiday
    end
    end
  end.flatten.compact # include the string "BBQ"  end
end
