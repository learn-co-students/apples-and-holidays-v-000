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
  holiday_hash[:winter].each do |key, value|
    value << supply
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season][holiday_name] = supply_array
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  holiday_hash[:winter].collect do |key, value|
    value
  end.flatten
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  
  # iterate through first layer of hashes and output each season as a string
  holiday_hash.each do |season, holiday_hash|
    puts "#{season.to_s.capitalize}:"
    
    # iterate through second layer of hashes
    holiday_hash.each do |holiday, supplies|
      
       # convert to string and capitalize holiday name (prepare so we can print)
       str_array = holiday.to_s.split("_")
       str_array.each {|string| string.capitalize!}
       holiday_str = str_array.join(" ")
       
       # convert the array of supplies into a string
       supplies_str = supplies.join(", ")
       
       # output holiday and supplies
       puts "  #{holiday_str}: #{supplies_str}"
       
    end
    
  end
  
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  
  # result_array is an array of holiday names (as symbols) that include "BBQ"
  result_array = []
  
  # iterate through the the first layer of hashes
  holiday_hash.each do |season, holiday_hash|
    
    # iterate through the second layer of hashes
    holiday_hash.each do |holiday, supplies|
  
      #check if included "BBQ" string; if true, add to result_array
      if supplies.include?("BBQ")
        result_array << holiday
      end
      
    end
    
  end
  # return result_array
  result_array
end







