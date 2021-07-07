require 'pry'


def second_supply_for_fourth_of_july(holiday_hash)
  #Write a method that returns the second supply for the Fourth of July.

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
  #Write a method that adds a supply to both Winter holidays
    holiday_supplies[:winter][:christmas] << "Balloons"
    holiday_supplies[:winter][:new_years] << "Balloons"
  end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
    holiday_hash[:spring][:memorial_day].push(supply)
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  # remember to return the updated hash
  return holiday_hash
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
  holiday_hash.each do |key, value|
    puts "#{key.capitalize}:"
    value.each do |holiday, supply|
      holiday = holiday.to_s.split("_") #break the string into an array of words
      holiday = holiday.map {|word| word.capitalize }.join(" ")
      supply = supply.join(", ")
      puts "  #{holiday}: #{supply}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ" (return memorial Day and fourth_of_july)
  new_array = []
  holiday_hash.each do |seasons, holidays|
      holidays.each do |holiday, items|
        if items.include?("BBQ")
          new_array << holiday
        end
      end
  end
  return new_array
end
