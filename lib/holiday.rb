require 'pry'

def second_supply_for_fourth_of_july(holiday_supplies)
  holiday_supplies[:summer][:fourth_of_july][1]
end

holiday_hash =
  {
  :winter => {
       :christmas => ["Lights", "Wreath"],
       :new_years => ["Party Hats"]
     },
  :summer => {
       :fourth_of_july => ["Fireworks", "BBQ"]
     },
     :fall => {
       :thanksgiving => ["Turkey"]
     },
     :spring => {
     :memorial_day => ["BBQ"]
     }
   }
  # return the second element in the 4th of July array

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash.each do |season, holiday|
    if season == :winter
      holiday.each do |holiday, item|
          item << supply
      end
    end
  end
end
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash.each do |season, holiday|
    if season == :spring
      holiday.each do |holiday, item|
        if holiday == :memorial_day
          item << supply
        end
      end
    end
  end
end
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season] = {holiday_name => supply_array}
  holiday_hash
end
  # code here
  # remember to return the updated hash

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten
end
  # return an array of all of the supplies that are used in the winter season


def all_supplies_in_holidays(holiday_hash)
  string = ""
  holiday_hash.each do |season, holiday|
    puts "#{season.capitalize}:"
    holiday.each do |holiday,supply|
      hol_string = holiday.to_s.capitalize.split("_")
      hol_string.each { |cap| cap.capitalize!}
      full_string_cap = "  " + hol_string.join(" ") + ": " +     supply.join(", ")
      puts full_string_cap
    end
  end
end
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.


def all_holidays_with_bbq(holiday_hash)
  array = []
  holiday_hash.each do |season, holiday|
    holiday.each do |holiday, supply|
      if supply.any? { |item| item == "BBQ" }
        array << holiday
      else
      end
    end
  end
  array
end
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
