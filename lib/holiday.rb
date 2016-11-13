require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
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
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash[:winter][:christmas] << "Balloons"
  holiday_hash[:winter][:new_years] << "Balloons"
end

def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
    holiday_hash[season][holiday_name] = supply_array
end

def all_winter_holiday_supplies(holiday_hash)
    holiday_supplies[:winter].map do |holiday, supplies|
      supplies

  end.flatten
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.

# this is the first line of code that this iteration reads - which we should console.log the season in the correct format.
  holiday_hash.each do |season, holidays|
    puts"#{season}:".capitalize
    holidays.each do |holiday, supplies| # it will iterate through all the keys here then go to the next season in the parent iterator
      new_holiday = holiday.to_s.split("_").map do |caps_holiday|
        caps_holiday.to_s.capitalize
      end
      joined_holiday = new_holiday.join(" ")
      puts"  " + "#{joined_holiday}: " + supplies.join(", ")
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  holiday_hash.map do  |season, holidays|
  holidays.map do |holiday, supplies|
    holiday_supplies = holiday if supplies.include?("BBQ")
    end.flatten.compact #.flatten works on array #.compact works on array
  end.flatten.compact
end
