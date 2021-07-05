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
  holiday_hash[:winter][:christmas].push(supply)
  holiday_hash[:winter][:new_years].push(supply)
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day].push(supply)
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season][holiday_name]=supply_array
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
#new_supply
supply =  holiday_hash[:winter].collect do |holiday,supply|
    supply
  #   season == :winter
  #   holiday.values.flatten
  end
supply.flatten
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  holiday_hash.each do |season,holidays|
    new_season =season.to_s.capitalize!
    puts "#{new_season}:"

    holidays.each do |holiday_name,supplies|
      new_holiday_name = holiday_name.to_s.split('_').collect do |split_names|
        split_names.capitalize!
      end.join(" ")

       puts "  #{new_holiday_name}: #{supplies.join(', ')}"
    end
  end
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"

  # holiday_hash.collect do |season,event|
  #   holiday.collect do |holiday_event, supplysupply|
  #     binding.pry
  #     if supply == "BBQ"
  #
  #     return holiday
  array_symbols = []
  holiday_hash.each do |season, event|
    event.each do |holiday_event, supply|
     array_symbols << holiday_event if supply.include?("BBQ")
    end
  end
  array_symbols
end
