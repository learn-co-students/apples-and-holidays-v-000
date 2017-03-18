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
  holiday_supplies[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_supplies[:winter][:christmas]<<"Balloons"
  holiday_supplies[:winter][:new_years]<<"Balloons"
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_supplies[:spring][:memorial_day ]<< supply
  #holiday_supplies[:spring][:memorial_day ]<<"supply"
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash

  #holiday_supplies = season
  #season = holiday_name
  #holiday_name = supply_array

  holiday_supplies[season][holiday_name] = supply_array
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  holiday_supplies[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.

  #season_and_holiday_capitalized = holiday_supplies.to_s.split(" ")
  #new_holiday_supplies = season_and_holiday_capitalized.collect {|season, holiday| season.capitalize!}
  #  new_holiday_supplies.join(" ")
#end
  season_and_holiday_capitalized = []
  holiday_supplies.each do |season, holiday|
    puts "#{season.to_s.capitalize!}:"
    holiday.each do |holiday_name, supplies|
    season_and_holiday_capitalized = holiday_name.to_s.split('_').each {|name| name.capitalize!}.join(' ')
      #end
      #  season_and_holiday_capitalized.join(' ')
      puts "  #{season_and_holiday_capitalized}: #{supplies.join(", ")}"
    end
    end
end


def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  array =[]
  holiday_supplies.each do |season, data|
    data.each do |holiday_name, value|
      value.each do |supply|
      if supply == "BBQ"
        array << holiday_name
        end
      end
    end
  end
    array
  end
