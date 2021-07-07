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
  # holiday_hash.keys[1].values[1]
  holiday_hash.each do |season, holiday_details_hash|
    holiday_details_hash.each do |holiday, item|
      item << supply
    end
  end
end

def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash.each do |season, holiday_details_hash|
    holiday_details_hash.each do |holiday, item|
      item << supply
    end
  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
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
  # Fall:
  #   Thanksgiving: Turkey
  # Spring:
  #   Memorial Day: BBQ
  # capitalize *both* words, you'll need to `.split` the string into an array and iterate over that array to `.capitalize!` each word in it. Then, you'll need to `.join` the array back into a string.
  holiday_hash.each do |season, holiday_details_hash|
    puts "#{season}:".capitalize
    holiday_details_hash.each do |holiday_name, holiday_supplies|
      item_array = holiday_supplies.join(", ")
      name_array = holiday_name.to_s.split("_")
      holiday_array = name_array.collect {|word| word.capitalize}.join(" ")
      puts "  #{holiday_array}: " << item_array
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  # if holiday_hash[:summer][:fourth_of_july][1]
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  supply_array = Array.new
  holiday_hash.each do |season, holiday_details_hash|
    holiday_details_hash.each do |holiday_name, holiday_supplies|
      if holiday_supplies.include?("BBQ")
        supply_array << holiday_name
      end
    end
  end
  supply_array
end
