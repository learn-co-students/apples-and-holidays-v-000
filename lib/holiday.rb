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
  holiday_hash[:winter].each do |holiday, things|
    holiday_hash[:winter][holiday]<<supply
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring].each do |holiday, things|
    holiday_hash[:spring][holiday]<<supply
 end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season][holiday_name]={}
  holiday_hash[season][holiday_name]= supply_array
  holiday_hash
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
  holiday_hash.each do |season, holidays|
    puts "#{season.to_s.capitalize}:" #season
    holidays.each do|holiday, supplies|
      puts "  #{holiday.to_s.split('_').map {|a| a.capitalize }.join(' ') }: #{supplies.join(', ')}" #holidays : supplies
      end
    end
end
#loop thorugh our list
def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  # loop through twice to get to season then holiday keys
  # if supplies include "BBQ" then push into bbq_arr
  bbq_arr = []
  holiday_hash.each do |season, holidays|
    holidays.each do |holidays, supplies|
      if supplies.include?("BBQ")
        bbq_arr << holidays

        end
      end
    end
  bbq_arr
end
