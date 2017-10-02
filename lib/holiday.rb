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
  new_supply = supply
  holiday_hash.each do |season, holidays_hash|
    if season == :winter
      holidays_hash.each do |holiday, supplies|
        supplies << new_supply
      end
    end
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  new_supply = supply
  holiday_hash.each do |season, holidays_hash|
    if season == :spring
      holidays_hash.each do |holiday, supplies|
        supplies << new_supply
      end
    end
  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  new_holiday = holiday_name
  new_holiday_supplies = supply_array
  season_for_add = season
  holiday_hash.each do |season, holidays_hash|
    if season == season_for_add
      holiday_hash[season][new_holiday] = new_holiday_supplies
    end
  end
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
  holiday_hash.each do |season, holidays_hash|
    season_string = season.to_s
    puts "#{season_string.capitalize}:"
    holidays_hash.each do |holiday, supplies|
      holiday_string = holiday.to_s
      sub_under_for_space = holiday_string.gsub("_", " ")
      holiday_string_split = sub_under_for_space.split
      cap_holiday_array = holiday_string_split.each{|name| name.capitalize!}
      cap_holiday_name = cap_holiday_array.join(" ")
      supplies_strings = supplies.join(", ")
      puts "  #{cap_holiday_name}: #{supplies_strings}"
    end
  end
end


def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  bbq_holidays = []
  holiday_hash.each do |season, holidays_hash|
    holidays_hash.each do |holiday, supplies|
      if supplies.include?("BBQ")
        bbq_holidays << holiday
      end
    end
  end
  bbq_holidays
end
