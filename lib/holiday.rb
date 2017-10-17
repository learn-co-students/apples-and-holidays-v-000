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
  supply = ""
  holiday_hash.each do |season, seasonal_holidays_hash|
    if season == :summer
      seasonal_holidays_hash.each do |holiday, supplies_array|
        if holiday == :fourth_of_july
          supply = supplies_array[1]
        end
      end
    end
  end
  supply
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash.each do |season, seasonal_holidays_hash|
    if season == :winter
      seasonal_holidays_hash.each do |holiday, supplies_array|
        if holiday == :christmas || holiday == :new_years
          supplies_array << supply
        end
      end
    end
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash.each do |season, seasonal_holidays_hash|
    if season == :spring
      seasonal_holidays_hash.each do |holiday, supplies_array|
        if holiday == :memorial_day
          supplies_array << supply
        end
      end
    end
  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  supplies_array = []
  holiday_hash.each do |season, seasonal_holiday_hash|
    if season == :winter
      supplies_array = seasonal_holiday_hash.values.flatten
    end
  end
  supplies_array
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  holiday_hash.each do |season, seasonal_holiday_hash|
    puts "#{season.to_s.capitalize}:"
    seasonal_holiday_hash.each do |holiday, supplies_array|
      if holiday.to_s.include?("_") == true
        holiday_array = holiday.to_s.split("_")
        capitalized_holiday_array = holiday_array.map { |word| word.capitalize }
        puts "  #{capitalized_holiday_array.join(" ")}: #{supplies_array.join(", ")}"
      else
        puts "  #{holiday.to_s.capitalize!}: #{supplies_array.join(", ")}"
      end
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  holidays_with_bbq = []
  holiday_hash.each do |season, seasonal_holiday_hash|
    seasonal_holiday_hash.each do |holiday, supplies_array|
      if supplies_array.include?("BBQ")
        holidays_with_bbq << holiday
      end
    end
  end
  holidays_with_bbq
end
