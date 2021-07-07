require 'pry'

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
  holiday_hash.each do |winter_hash, item|
    item.each do |winter, holiday|
      if winter_hash == :winter
         holiday << supply
      end
    end
  end
end
     # Christmas AND the New Year's arrays

def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash.each do |memorial_hash, item|
    item.each do |memorial_day, merchandise|
      if memorial_hash == :spring
        merchandise << supply
      end
    end
  end
end
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end
  # code here
  # remember to return the updated hash

def all_winter_holiday_supplies(holiday_hash)
  array =[]
  holiday_hash.each do |key, value|
    if key == :winter
      value.each do |holiday, item|
       array <<  item
      end
    end
  end
  array.flatten
end
  # return an array of all of the supplies that are used in the winter season

def all_supplies_in_holidays(holiday_hash)

  holiday_hash.each do |season, holidays|
    puts "#{season.capitalize}:"
    holidays.each do |day, supplies|
      puts "  #{day.to_s.capitalize.split("_").map(&:capitalize).join(" ")}: #{supplies.join(", ")}"
    end
  end
end
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.

def all_holidays_with_bbq(holiday_hash)
  array = []

  holiday_hash.each do |season, holidays|

    holidays.collect do |day, supplies|
      if supplies.include? "BBQ"
        puts array << day
      end
    end
  end
  array
end
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
