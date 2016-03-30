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
  return holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above 
  # add the second argument, which is a supply, to BOTH the 
  # Christmas AND the New Year's arrays
   holiday_hash[:winter][:christmas] << supply
   holiday_hash[:winter][:new_years] << supply
  return holiday_hash
end
 

def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day] << supply
  return holiday_hash
end




def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash.each do |key,value|

    if key == season
      holiday_hash[season] = {holiday_name => supply_array}
    end
  end
end




def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  holiday_hash[:winter].values
  return holiday_hash.to_s
end


def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, value1|
    new_holiday = ""
    new_supplies = ""
    puts "#{season.capitalize}:"
    value1.each do |holiday, supplies|
      new_holiday = holiday.to_s.split("_").collect do |capit|
        capit.capitalize
      end
      new_supplies = supplies.collect do |omg|
            omg
      end
    puts "  "  + "#{new_holiday.join(' ')}: #{new_supplies.join(", ")}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  food =[]
  holiday_hash.each do |seasons,holidays|
    holidays.each do |key,supply|
      if supply.include?("BBQ")
        food << key
    end
    end
  end
  return food
end