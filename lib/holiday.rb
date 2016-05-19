require 'pry'
# given that holiday_hash looks like this:
#holiday_hash = {
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

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter][:christmas] << supply
  holiday_hash[:winter][:new_years] << supply
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holidays_in_season|
    puts "#{season}:".capitalize!
    holidays_in_season.each do |holiday, supply|
      if "#{holiday}".include? ("_")
        holiday = ("#{holiday}".split("_").each {|string| string.capitalize!}).join(" ")
      else
        holiday = "#{holiday}".capitalize!
      end
      puts "  " + holiday + ": " + supply.join(", ")
    end
  end
end



def all_holidays_with_bbq(holiday_hash)
  bbq_holidays = []
  holiday_hash.each do |season, holidays_in_season|
    holidays_in_season.each do |holiday, supplies|
      if supplies.include? ("BBQ")
        bbq_holidays << holiday
      end
    end
  end
  bbq_holidays
end
