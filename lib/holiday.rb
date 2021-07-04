require 'pry'

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
  return holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten
end


def all_supplies_in_holidays(holiday_hash)
 holiday_hash.each do |key, hash|
   puts key.to_s.capitalize! + ":"
    hash.each do | holiday_name, supplies |
      cap_holiday_names = holiday_name.to_s.split("_").collect {|hol_name| hol_name.capitalize }
      puts "  " + cap_holiday_names.join(" ") + ": " + supplies.join(", ")
    end
 end 
end

def all_holidays_with_bbq(holiday_hash)
  collected_holidays = []
  holiday_hash.each do | key, hash |
    hash.each do |holiday_name, supply_array|
      if supply_array.include?("BBQ")
       collected_holidays.push(holiday_name)
      end
    end
  end
  collected_holidays
end







