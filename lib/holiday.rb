require 'pry'

holiday_hash =  {
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

def second_supply_for_fourth_of_july(holiday_hash) #returns the second element in the 4th of July array
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply) #uses .each to add a supply to any holiday named christmas or new years
  holiday_hash.each do |season, holidays|
    holidays.each do |event, attribute|
      if event == :christmas || event == :new_years
        attribute << supply
      end
    end
  end
end

def add_supply_to_memorial_day(holiday_hash, supply) #uses .each to add a new supply to memorial day if present
  holiday_hash.each do |season, holidays|
    holidays.each do |event, attribute|
      if event == :memorial_day
        attribute << supply
      end
    end
  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array) #adds a new holiday to the hash
  holiday_hash[season][holiday_name] = supply_array
end

def all_winter_holiday_supplies(holiday_hash) #return an array of all of the supplies that are used in the winter season
  holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash) #expect this to return the hash and it's contents in a formatted list
  holiday_hash.each do |season, holidays|
    puts "#{season.to_s.capitalize}:"
      holidays.each do |holiday, attributes|
        puts "  #{holiday.to_s.split("_").collect {|x| x.capitalize}.join(" ")}: #{attributes.join(", ")}"
      end
  end
end

def all_holidays_with_bbq(holiday_hash) #returns an array of holiday names (as symbols) where "BBQ" is included as an attribute
  bbq_holidays = []
  holiday_hash.each do |season, holidays|
    holidays.each do |holiday_name, attributes|
      if attributes.flatten.include?("BBQ")
        bbq_holidays << holiday_name
      end
    end
  end
  bbq_holidays
end
