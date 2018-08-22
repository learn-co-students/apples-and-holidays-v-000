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
  
  holiday_hash[:winter].each do |holiday, supplies|
    supplies << supply
  end
  #binding.pry
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  
  holiday_hash[:spring][:memorial_day] << supply
  #binding.pry
  
  # To make this more dynamic, this works as well
  # (though it would require the method to be called #add_supply_to_spring_holidays):
  #holiday_hash[:spring].each do |holiday, supplies|
    #supplies << supply 
  #end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  
  holiday_hash[season][holiday_name] = supply_array
  #binding.pry
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  
  #winter_supplies = []
  #holiday_hash[:winter].each do |holiday, supplies|
    #winter_supplies << supplies
  #end
  
  winter_supplies = holiday_hash[:winter].collect {|holiday, supplies| supplies}
  winter_supplies.flatten
  
  #binding.pry
  # holiday_hash[:winter][:christmas] + holiday_hash[:winter][:new_years] works as well,
  # but my code allows for ANY set of winter holidays.
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.

  holiday_hash.each do |season, holidays|
    season = convert_symbol_to_capitalized_string(season)
    puts "#{season}:"
    
    holidays.each do |holiday, supplies|
      holiday = convert_symbol_to_capitalized_string(holiday)
      puts "  #{holiday}: " + supplies.join(", ")
    end
  end
end

def convert_symbol_to_capitalized_string(symbol)
  capitalized_array = symbol.to_s.split("_").each {|element| element.capitalize!}
  
  capitalized_string = capitalized_array.join(" ")
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  
  # Solution 1:
  #bbq_holidays = []
  #holiday_hash.each do |season, holidays|
    #holidays.each do |holiday, supplies|
      #if supplies.include?("BBQ")
        #binding.pry
        #bbq_holidays << holiday
      #end
    #end
  #end
  #binding.pry
  #bbq_holidays
  
  # Solution 2, from the "Procedural Ruby Discussion, Part 2":
  holiday_hash.collect do |season, celeb_hash|
    celeb_hash.collect do |holiday_celebration, supply_array|
      supply_array.collect do |supply|
        if supply == "BBQ"
          holiday_celebration
        end 
      end 
    end 
  end.flatten.compact
  
end

# Note: What follows are extra methods not required for this assignment.
# In the "Procedural Ruby Discussion, Part 2", we learned how to combine the functionalities of #add_supply_to_memorial_day and #add_supply_to_winter_holidays into one method:

def add_supply_to_holidays(holiday_hash, supply)
  holiday_hash.each do |season, holidays|
    holidays.each do |holiday, supplies| 
      supplies << supply 
    end 
  end 
end

# However, that only adds the supply to EVERY holiday! 
# To add a supply to a SPECIFIC holiday and/or add a new holiday and/or season, do this:

def add_supply_to_holiday(holiday_hash, season, holiday, supply)
  holiday_hash[season][holiday] << supply
end

# Finally, to add a new season to the holiday_hash:

def add_new_season_with_holidays_and_supplies(holiday_hash, season, holidays)
  holiday_hash[season] = holidays 
end