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
  holiday_hash[season][holiday_name] = supply_array
   holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  # binding.pry
  winter_supplies = []
  holiday_hash[:winter].each do |attribute, item|
     winter_supplies << item
    end
   #  binding.pry
    winter_supplies.flatten
  #  binding.pry
  # winter_supplies
  end
  
  

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  binding.pry
holiday_hash.each do |season_key, season_value|
  binding.pry
  puts "#{season_key.capitalize}:"
holiday_hash[season_key].each do |holiday, data|
  #  binding.pry
    holiday_name=holiday.to_s
    holiday_name_array=holiday_name.split('_')
   # binding.pry
    holiday_name_array.each {|holiday_word| holiday_word.capitalize!}
    binding.pry
     holiday_name=holiday_name_array.join(" ")
   # binding.pry
   items = data.to_s
    puts "#{holiday_name}: #{items}"
    end
  end
end


def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"

end







