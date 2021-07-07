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
    holiday_hash.each do |season, info_hash|
    info_hash.each do |holiday, supplies|
      if holiday == :fourth_of_july
        return supplies[1]
      end
    end
  end
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
    holiday_hash.each do |season, info_hash|
      if season == :winter
    info_hash.each do |holiday, supplies|
         supplies << supply
      end
    end
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
    holiday_hash.each do |season, info_hash|
    info_hash.each do |holiday, supplies|
      if holiday == :memorial_day
         supplies << supply
      end
    end
  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
    holiday_hash.each do |season1, info_hash|
          if season1 == season
    holiday_hash[season1] = {:"#{holiday_name}" => supply_array}
      end
    end
holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  all_supplies = []
    holiday_hash.each do |season, info_hash|
      if season == :winter
    info_hash.each do |holiday, supplies|
         all_supplies << supplies
      end
    end
  end
  all_supplies.flatten
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
    holiday_hash.each do |season, info_hash|
      puts "#{season.to_s.capitalize}:"
    info_hash.each do |holiday, supplies|
      holiday_string = holiday.to_s.gsub "_"," "
      holiday_array = holiday_string.split
      holiday_array.each do |word|
        word.capitalize!
      end
      puts "  #{holiday_array.join(" ")}: #{supplies.join(", ")}"
      end
    end
  end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  keys= []
    holiday_hash.each do |season, info_hash|
    info_hash.each do |holiday, supplies|
      supplies.each do |supply|
        if supply == "BBQ"
         keys << holiday
      end
    end
  end
  end
keys
end