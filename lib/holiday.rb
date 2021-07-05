require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
holiday_hash[:summer][:fourth_of_july][1]
  # return the second element in the 4th of July array
end

#require "pry"
def add_supply_to_winter_holidays(holiday_hash, supply)
holiday_hash[:winter].each do |holiday, supplies| supplies << supply
end

#binding.pry
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays

end


def add_supply_to_memorial_day(holiday_hash, supply)
holiday_hash[:spring][:memorial_day] << supply

  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array

end
#require 'pry'
def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  # remember to return the updated hash
#binding.pry

end

def all_winter_holiday_supplies(holiday_hash)
holiday_hash[:winter].values.flatten
# return an array of all of the supplies that are used in the winter season
end

def all_supplies_in_holidays(holiday_hash)
holiday_hash.each do |season, holiday|
  puts "#{season.capitalize}:"
  holiday.each do |holiday_name, supplies|
      puts "  #{holiday_name.to_s.split("_").collect {|split_holiday_name| split_holiday_name.capitalize!}.join(" ")}: #{supplies.join(", ")}"
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.

    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
#  require "pry"
holiday_hash.collect {|season, holidays|
  holidays.collect {|holiday_name, supplies|
    supplies.include?("BBQ") ? holiday_name : nil
#binding.pry
  }
}.flatten.compact
end
