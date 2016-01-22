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
  holiday_supplies[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above 
  # add the second argument, which is a supply, to BOTH the 
  # Christmas AND the New Year's arrays
  holiday_hash.each do |season, holiday_details_hash|
    if season == :winter  
      holiday_details_hash.each do |holiday, supplies|
        supplies << supply
      end
    end
  end
end
 

def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_supplies[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season][holiday_name] = supply_array
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  holiday_hash.each do |season, season_details_hash|
    puts "#{season.to_s.capitalize!}:"
    season_details_hash.each do |holiday, holiday_array|
      #convert holiday symbol to string
      holiday_string = holiday.to_s
      #check if holiday is more than one word
      if holiday_string.include? "_"
        split_into_array = holiday_string.split("_")
        split_into_array.collect do |word|
          word.capitalize!
        end
        join_holiday = split_into_array.join(" ")
        puts "  #{join_holiday}: #{holiday_array.join(", ")}"
      else
        puts "  #{holiday.to_s.capitalize!}: #{holiday_array.join(", ")}"
      end
    end
  end  
end

def all_holidays_with_bbq(holiday_hash)
  holiday_array = []
  holiday_hash.each do |season, holiday_details_hash|
    holiday_details_hash.each do |holiday, supply_array|
      if supply_array.include?("BBQ") then
          holiday_array << holiday 
          #binding.pry 
          #return holiday_array

      end
    end
  end
  return holiday_array
end







