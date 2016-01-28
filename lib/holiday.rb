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
  holiday_hash.each do |season,season_hash|
    season_hash.each do |holiday,supplies|
      if holiday == :christmas || holiday == :new_years
        supplies.push(supply)
      end
    end
  end
end
 

def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash.each do |season,season_hash|
    season_hash.each do |holiday,supplies|
      if holiday == :memorial_day
        supplies.push(supply)
      end
    end
  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season] = {holiday_name => supply_array}
  
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  holiday_hash[:winter].collect do |holiday, supplies|
    supplies
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
  holiday_hash.each do |season, season_hash|
    puts season.to_s.capitalize + ":" # "[Season]: "
    season_hash.each do |holiday, supplies|
      if holiday.to_s.include?("_") # If the holiday name includes an underscore...
        holiday = holiday.to_s.split("_") # split it by the underscore...
        holiday.collect do |word| # replace the holiday array with the following iteration...
          word.capitalize! # capitalize each word
        end
        holiday = holiday.join(" ") # turn the holiday array into a string..
        puts "  " + holiday + ": " + supplies.join(", ") # "  [Holiday]: Supply 1, Supply 2 [...]"
      else #Otherwise
        puts "  " + holiday.to_s.capitalize + ": " + supplies.join(", ") # "  [Holiday]: Supply 1, Supply 2 [...]"
      end
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  array = []
  holiday_hash.each do |season, season_hash|
    season_hash.each do |holiday,supplies|
      if supplies.include?("BBQ")
        array << holiday
      end
    end
  end
  array
end







