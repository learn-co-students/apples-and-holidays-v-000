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
  holiday_hash.each do |season, holiday|
    holiday.each do |name, identifier|
    end
  end
  holiday_hash[:winter][:christmas] << supply
  holiday_hash[:winter][:new_years] << supply
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season].merge!(holiday_name => supply_array)
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  holiday_hash[:winter].values.flatten
end

holiday_hash = {
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

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.collect do |season, holidays|
    print_season = season.to_s.capitalize! << ":"
    puts print_season
# iterate through holidays and capitalize them
    holidays.collect do |holiday, supplies|
      holiday_array = holiday.to_s.split('_')
      holiday_array.collect do |word|
        word.to_s.capitalize!
      end
      print_holiday = holiday_array.join(" ")
      puts "  " + print_holiday << ": " + supplies.join(", ")
      # iterate through supplies and join and print
      #print supplies.join(", ")
    end
  end
  return holiday_hash
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  matches = []
  holiday_hash.each do |season, holidays|
    holidays.each do |holiday, supplies|
      supplies.each do |supply|
        if supply == "BBQ"
          matches << holiday
        end
      end
    end
  end
  return matches
end
