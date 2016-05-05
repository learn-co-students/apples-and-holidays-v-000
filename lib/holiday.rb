require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
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
holiday_hash[:summer][:fourth_of_july][1]

end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above 
  # add the second argument, which is a supply, to BOTH the 
  # Christmas AND the New Year's arrays

  holiday_hash[:winter][:christmas] << supply
  holiday_hash[:winter][:new_years] << supply
  
end
 

def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day] << supply
  
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  holiday_hash[season][holiday_name] = supply_array
  # remember to return the updated hash
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
supply_array = []

  holiday_hash.each do |season, details|
    if season == :winter 
  details.each do |holiday, supplies|
    supplies.each do |supply|
  supply_array << supply 
  end
    end
  end
    end
  supply_array 
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.

  holiday_hash.collect do |season, details|
    season = season.capitalize.to_s
    puts "#{season}:"

    holiday_str = " "
    supply_str = " "

    counter = 0

    details.each do |holiday, supplies|
      holiday = holiday.capitalize.to_s
      holiday_str << holiday
      
      supplies.each do |supply|
        supply_str = supply_str + supply + ","
      end
      spl = supply_str.split
      if spl.last == ","
        then spl.pop
      end
        supply_str = spl.join
      end
      puts " #{holiday_str}:" "#{supply_str}"

      counter += 1
    end 
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
    
  holiday_arr = []

  holiday_hash.collect do |season, details|
  
  details.each do |holiday, supplies|

  supplies.each do |supply|
    if supply == "BBQ" 
       holiday_arr << holiday

end
end
end
end
holiday_arr
end






