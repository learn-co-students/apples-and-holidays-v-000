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
  holiday_hash.each do |season, hash_for_holiday|
    if season == :winter 
      hash_for_holiday.each do |holiday, supplies|
        supplies << supply
      end
    end
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
  holiday_hash
  
end

def all_winter_holiday_supplies(holiday_hash)
  winter_supplies = []
  holiday_hash[:winter].map do |holiday_name, supply_array|
    supply_array.each do |supply|
      winter_supplies << supply 
    end
  end
  winter_supplies
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  holiday_hash.each do |season, hash_for_holiday|
    puts "#{season.to_s.capitalize!}:" #Prints each season capitilized with an : ie "Winter:"
    hash_for_holiday.each do |holiday, supply_array|
      puts "  #{holiday.to_s.gsub("_", " ").split.each{|word| word.capitalize!}.join(" ")}: #{supply_array.join(", ")}"
    end
  end

end 

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  bbq_holidays = []
    holiday_hash.each do |season, hash_for_holiday|
    
    hash_for_holiday.each do |holiday, supply_array|
      if supply_array.include?("BBQ")
        bbq_holidays << holiday
      end
    end
  end
  bbq_holidays
end







