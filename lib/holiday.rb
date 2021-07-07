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
  holiday_hash.each do |season, data_hash|
    if season == :winter
      data_hash.each do |holiday, array|
        array << supply
      end
    end
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash.each do |season, data_hash|
    data_hash.each do |holiday, array|
      if holiday == :memorial_day
        array << supply
      end
    end
  end
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
  holiday_hash.each do |season, data_hash|
    season_string = season.to_s
    season_string.capitalize!
    puts "#{season_string}:"
    data_hash.each do |holiday, array|
      holiday_string = holiday.to_s
      if holiday_string.include?("_")
        holiday_array = holiday_string.split("_")
        holiday_array.each do |word|
          word.capitalize!
        end
        holiday_caps = holiday_array.join(" ")
        supply_string = array.join(", ")
        puts "  #{holiday_caps}: #{supply_string}"
      else
        holiday_string.capitalize!
        supply_string = array.join(", ")
        puts "  #{holiday_string}: #{supply_string}"
      end
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  holidays_with_bbqs = []
  holiday_hash.each do |season, data_hash|
    data_hash.each do |holiday, supply_array|
      if supply_array.include?("BBQ")
        holidays_with_bbqs << holiday
      end
    end
  end
  holidays_with_bbqs
end
