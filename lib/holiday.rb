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
  holiday_hash.each do |season, holidays_hash|
    if season == :winter
      holidays_hash.each do |holiday, supply_array|
        supply_array << supply
      end
    end
  end
  holiday_hash
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash.each do |season, hash_of_holidays|
    if season == :spring
      hash_of_holidays.each do |holiday, array_of_supplies|
        array_of_supplies << supply
      end
    end
  end
  holiday_hash
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash.each do |existing_season, hash_of_holidays|
    if existing_season = season
      hash_of_holidays[holiday_name] = supply_array
    end
  end
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  supply_array = []
  holiday_hash.each do |season, hash_of_holidays|
    supply_array << hash_of_holidays.values
  end
  supply_array.flatten
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  holiday_hash.each do |season, hash_of_holidays|
    puts "#{season.to_s.capitalize}:"
    hash_of_holidays.each do |holiday, supply_array|
      myLine = ""
      holiday_split = holiday.to_s.split("_")
      holiday_array = holiday_split.collect do |word|
        word.capitalize
      end
      holiday_name = holiday_array.join(" ")
      myLine += "  #{holiday_name}: "
      supply_array.each do |supply|
        if supply_array.last != supply
          myLine += "#{supply}, "
        else
          myLine += "#{supply}"
        end
      end
      puts myLine
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  returnArray = []
  holiday_hash.each do |season, hash_of_holidays|
    hash_of_holidays.each do |holiday, supply_array|
      if supply_array.include?("BBQ")
        returnArray << holiday
      end
    end
  end
  returnArray
end
