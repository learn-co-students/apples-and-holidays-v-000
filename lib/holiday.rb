require 'pry-byebug'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_supplies[:summer][:fourth_of_july][1]
end
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

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash.each do |key, value|
    if key == :winter
      value.each do |holiday, gear|
        gear.push "#{supply}"
      end
    end
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash.each do |key, value|
    if key == :spring
      value.each do |holiday, gear|
        gear.push "#{supply}"
      end
    end
  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  # add new key-value pair to holiday_hash[season]
  # holiday_hash[season] is itself a hash
  # use equals sign
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  holiday_hash[:winter].values.flatten
end
# holiday_hash calls on the first level hash
# [:winter] narrows the focus to the winter season
# .values returns a new array with values
# flatten eliminates any additional brackets and returns a new array with just
#the values previously extracted

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.

  holiday_hash.each do |season, holidays|
    puts "#{season.to_s.capitalize}:"
    holidays.each do |event, gear|
      puts "  " + event.to_s.split('_').map{|x| x.capitalize}.join(' ') + ": " + gear.join(", ") # "Fourth Of July: Fireworks, BBQ"
    end
  end
end
# First, iterate through the outermost hash and capitalize all seasons.
# Next, iterate through the holidays' key-value pairs
# Add 2 spaces, turn event from symbol to string, split string by removing _ and
# turning it into an array.
# Then use map to iterate through each element in the array, capitalize it and
# collect it into a new array.
# Join the array into a new string with spaces inbetween.
# Concatenate with a colon and add it to the newly joined gear array.

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  bbq = []
   holiday_hash.each do |season, holidays|
    holidays.each do |event, gear|
      bbq << event if gear.include?("BBQ")
      end
    end
  bbq
end

# empty array created
# iterate through holiday_hash
# iterate through holidays hash
# use shovel method to push event(holiday) to empty bbq array if gear(supplies)
# includes "BBQ"
# return bbq array
