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
  return holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash.each do |seasons, details_hash|
    if seasons == :winter
      details_hash.each do |holiday, supplies|
        supplies << supply
      end
    end
  end
  return holiday_hash
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
  return holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  collection = []
  holiday_hash.each do |seasons, details_hash|
    if seasons == :winter
      details_hash.each do |holiday, supplies|
        supplies.each do |supply|
          collection.push(supply)
        end
      end
    end
  end
  return collection
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  holiday_hash.each do |seasons, details_hash|
    puts "#{seasons.capitalize}:"
    details_hash.each do |holiday, supplies|
      string = holiday.to_s
      word = string.split("_")
      word.each do |dashes|
        dashes.capitalize!
      end
      final = word.join(" ")
      puts "  #{final}: " + supplies.join(", ")
    end
  end
  holiday_hash
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  collection = []
  holiday_hash.each do |seasons, details_hash|
    details_hash.each do |holiday, supplies|
      supplies.each do |supply|
        if supply == 'BBQ'
          collection.push(holiday)
        end
      end
    end
  end
  collection
end
