require 'pry'

def second_supply_for_fourth_of_july(holiday_supplies)
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

def add_supply_to_winter_holidays(holiday_supplies, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_supplies[:winter][:christmas] << supply
  holiday_supplies[:winter][:new_years] << supply
end


def add_supply_to_memorial_day(holiday_supplies, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_supplies[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_supplies, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_supplies[season][holiday_name] = supply_array
end

def all_winter_holiday_supplies(holiday_supplies)
  # return an array of all of the supplies that are used in the winter season
  holiday_supplies[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_supplies)
  holiday_supplies.each do |season,holiday|
    puts "#{season.to_s.capitalize!}:"
    holiday.each do |day,items|
      capitalized_day = []
      if day.to_s.split("_").size > 1
        day.to_s.split("_").collect do |split_day|
          capitalized_day << split_day.capitalize
        end
      else
        capitalized_day << day.capitalize
      end
        puts "  #{capitalized_day.join(" ")}: #{items.join(", ")}"
      end
    end
end


def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  holidays = []
  holiday_hash.map do |season,holiday|
    holiday.map do |day,supplies|
        if supplies.include?("BBQ")
          holidays << day
        else
          nil
        end
      end
    end
      holidays
  end
