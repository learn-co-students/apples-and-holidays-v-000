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
  holiday_hash[:winter].each do |key, value|
    holiday_hash[:winter][key] << supply
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season][holiday_name] = supply_array
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  winter_supply_array = []
  holiday_supplies[:winter].each do |key, value|
    winter_supply_array << value
  end
  winter_supply_array.flatten
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  holiday_string = ""
  holiday_string_array = []
  supplies_string = ""
  holiday_hash.each do |season_symbol, season_hash|
    puts season_symbol.to_s.capitalize + ":"
    season_hash.each do |holiday_symbol, supply_array|
        holiday_string_array = holiday_symbol.to_s.split("_")
        holiday_string_array = holiday_string_array.collect { |string| string.capitalize }
        holiday_string = holiday_string_array.join(" ")
        supplies_string = supply_array.join(", ")
        puts "  " + holiday_string + ": " + supplies_string
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  holiday_BBQ_array = []
  holiday_hash.each do |season_symbol, season_hash|
    season_hash.each do |holiday_symbol, supply_array|
      if supply_array.include?("BBQ")
        holiday_BBQ_array << holiday_symbol
      end
    end
  end
  holiday_BBQ_array
end
