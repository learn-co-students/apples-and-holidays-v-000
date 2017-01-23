require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_supplies[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash.each do |season, holiday|
    if season == :winter
      holiday.each do |day, items|
        items << supply
      end
    end
  end
end

def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash.each do |season, holiday|
    if season == :spring
      holiday.each do |day, items|
        items << supply
      end
    end
  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  collection = []
  holiday_hash.each do |season, holiday|
    if season == :winter
      holiday.each do |day, items|
        items.collect do |supply|
          collection << supply
        end
      end
    end
  end
  collection
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  array = []
  holiday_hash.each do |season, holiday|
    puts season.to_s.capitalize! + ":"
    holiday.each do |day, item|
      new_day = day.to_s
      if new_day.include?("_")
        array = new_day.split("_")
        i = 0
        while i < array.length
          array[i].capitalize!
          i += 1
        end
        new_day = array.join(" ")
      else
        new_day.capitalize!
      end
    puts "  " + new_day + ": " + item.join(", ")
    end
  end
end


def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  found = []
  holiday_hash.each do |season, holiday|
    holiday.each do |day, items|
      if items.detect { |find| find == "BBQ"}
        found << day
      end
    end
  end
  found
end
