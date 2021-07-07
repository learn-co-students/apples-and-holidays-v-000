require 'pry'

def second_supply_for_fourth_of_july(holiday_supplies)
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



# holiday_hash is identical to the one above
# add the second argument, which is a supply, to BOTH the
# Christmas AND the New Year's arrays

def add_supply_to_winter_holidays(holiday_hash, supply)                       #key, values
  holiday_hash[:winter].each do |holiday, supplies|
  #binding.pry
    supplies.push(supply)
  end
end

#2nd way
# holiday_hash[:winter][:christmas] << supply
# holiday_hash[:winter][:new_years] << supply



# again, holiday_hash is the same as the ones above
# add the second argument to the memorial day array
def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply
end


# code here
# remember to return the updated hash
def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
#binding.pry
  holiday_hash[season][holiday_name] = supply_array

end


# return an array of all of the supplies that are used in the winter season
def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten

end



# iterate through holiday_hash and print items such that your readout resembles:
# Winter:
#   Christmas: Lights, Wreath
#   New Years: Party Hats
# Summer:
#   Fourth Of July: Fireworks, BBQ
# etc.
def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season_name, supply_hash|
    puts "#{season_name.to_s.capitalize}:"
    supply_hash.each do |holiday_name, supply_array|
      puts "  #{holiday_name.to_s.split("_").map(&:capitalize).join(" ")}: #{supply_array.join(", ")}"#{supply}"
    end
  end
end



# return an array of holiday names (as symbols) where supply lists
# include the string "BBQ"

def all_holidays_with_bbq(holiday_hash)
  results = []
  holiday_hash.each do |season_name, supply_hash|
    supply_hash.each do |holiday_name, supply_array|
      results << holiday_name if supply_array.include?("BBQ")
    end
  end
  results
end
