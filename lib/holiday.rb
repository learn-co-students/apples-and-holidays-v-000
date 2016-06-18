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
  last_item = nil
  holiday_hash.each do |season, holidays_hash|
    if season == :summer
      holidays_hash.each {|holiday, items| last_item = items.last}
    end
  end
  last_item
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash.each do |season, holidays_hash|
    if season == :winter
      holidays_hash.each do |holiday, items|
        items << supply
      end
    end
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash.each do |season, holidays_hash|
    if season == :spring
      holidays_hash.each do |holiday, items|
        items << supply
      end
    end
  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season] = {
    holiday_name => supply_array
  }
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  winter_supplies = []
  holiday_hash.each do |season, holidays_hash|
    if season == :winter
      holidays_hash.each do |holiday, items|
        winter_supplies << items
      end
    end
  end
  winter_supplies.flatten
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
    puts "#{season.to_s.capitalize}:"
    holidays_hash.each do |holiday, supply_item|
      holiday_names = ""
      modified_holiday_names = []
      holiday_names = holiday.to_s.split("_").flatten
      holiday_names.each do |cap_holiday|
        cap_holiday.capitalize!
      end
      modified_holiday_names = holiday_names.join(" ")
      puts "  #{modified_holiday_names.to_s}: #{supply_item.join(", ")}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  bbq_holidays = []
  holiday_hash.each do |season, holidays_hash|
    holidays_hash.each do |holiday, supply_item|
      supply_item.each do |item|
        if item == "BBQ"
          bbq_holidays << holiday
        end
      end
    end
  end
  bbq_holidays
end
