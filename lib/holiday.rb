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
holiday_hash
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
  # holiday_hash.each {|season|
  #   puts "#{season.to_s}:\n  #{season.keys.join(", ")}\n  "}
# puts "Winter:
#   Christmas: Lights, Wreath
#   New Years: Party Hats
# Summer:
#   Fourth Of July: Fireworks, BBQ
# Fall:
#   Thanksgiving: Turkey
# Spring:
#   Memorial Day: BBQ"
holidays = holiday_hash.keys
puts "#{holidays[0].to_s.capitalize}:"
puts "  #{holiday_hash[:winter].keys[0].to_s.split("_").join(" ").capitalize}: #{holiday_hash[:winter][:christmas].join(", ")}"
puts "  #{holiday_hash[:winter].keys[1].to_s.split("_").map {|word| word.capitalize}.join(" ")}: #{holiday_hash[:winter][:new_years][0]}"
puts "#{holidays[1].to_s.capitalize}:"
puts "  #{holiday_hash[:summer].keys[0].to_s.split("_").map {|word| word.capitalize}.join(" ")}: #{holiday_hash[:summer][:fourth_of_july].join(", ")}"
puts "#{holidays[2].to_s.capitalize}:"
puts "  #{holiday_hash[:fall].keys[0].to_s.capitalize}: #{holiday_hash[:fall][:thanksgiving][0]}"
puts "#{holidays[3].to_s.capitalize}:"
puts "  #{holiday_hash[:spring].keys[0].to_s.split("_").map {|word| word.capitalize}.join(" ")}: #{holiday_hash[:spring][:memorial_day][0]}"


end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  bbq_holidays = []
  holiday_hash.each do |season, season_hash|
    season_hash.each do |holiday, supplies|
      if supplies.include? "BBQ"
        bbq_holidays << holiday
    end
  end
 end
 bbq_holidays
end
