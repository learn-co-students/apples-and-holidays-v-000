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
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter][:christmas] << supply
  holiday_hash[:winter][:new_years] << supply
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays

end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
  # code here
  # remember to return the updated hash

end

def all_winter_holiday_supplies(holiday_hash)
  winter_supplies = []
  christmas_supplies = holiday_hash[:winter][:christmas]
  new_years_supplies = holiday_hash[:winter][:new_years]
  winter_supplies << christmas_supplies
  winter_supplies << new_years_supplies
  winter_supplies.flatten
  # return an array of all of the supplies that are used in the winter season

end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holiday_supply_hash|
    puts "#{season.capitalize}:"
    holiday_supply_hash.each do |holiday, supply_array|
      holiday_string = holiday.to_s
      if holiday_string.include?("_")
        holiday_name = holiday_string.split("_")
        holiday_name.each do |word| 
          word.capitalize!
           holiday_string = holiday_name.join(" ")
        end
      else
        holiday_string.capitalize!
        end
       
      puts "  #{holiday_string}: #{supply_array.join(", ")}"
    end
  end
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.

end

def all_holidays_with_bbq(holiday_hash)
  bbq_holidays = []
  holiday_hash.each do |season, holiday_supply_hash|
    holiday_supply_hash.each do |holiday, supply_array|
      if supply_array.include?("BBQ")
        bbq_holidays << holiday
      end
    end
  end
  bbq_holidays
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"

end







