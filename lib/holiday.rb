require 'pry'

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

def second_supply_for_fourth_of_july(holiday_hash)
  # return the second element in the 4th of July array
  holiday_hash[:summer][:fourth_of_july][1]
end

#second_supply_for_fourth_of_july(holiday_hash)
new_supply = "Balloons"

def add_supply_to_winter_holidays(holiday_hash, new_supply)
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash.each do |season, winter_hash| # iterates over first level ("seasons") of hash
    if season == :winter
      winter_hash.each do |winter_holidays, supplies| # iterates over second level ("winter_holidays") of hash
        supplies << new_supply  # add (shovel) new_supply ("Balloons") to both arrays of existing supplies
        #binding.pry
      end
    end
  end
  holiday_hash
end

#add_supply_to_winter_holidays(holiday_hash, new_supply)

supply = "Grill"

def add_supply_to_memorial_day(holiday_hash, supply)
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day] << supply  # add (shovel) supply ("Grill") to array
end

#add_supply_to_memorial_day(holiday_hash, supply)
season = :fall
holiday_name = :columbus_day
columbus_day_supplies = ["Flags", "Parade Floats", "Italian Food"]

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, columbus_day_supplies)
  holiday_hash[season][holiday_name] = columbus_day_supplies
  #holiday_hash[:fall][:columbus_day] = ["Flags", "Parade Floats", "Italian Food"]
  # remember to return the updated hash
  holiday_hash
end

#add_new_holiday_with_supplies(holiday_hash, season, holiday_name, columbus_day_supplies)

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  return_supplies = [] # create an empty array
  holiday_hash.each do |season, winter_hash| # iterates over first level ("seasons") of hash
    if season == :winter
      winter_hash.each do |winter_holidays, supplies| # iterates over second level ("winter_holidays") of hash
        return_supplies << supplies  # add (shovel) supplies from both winter_holidays to empty array
        #binding.pry
      end
    end
  end
  return_supplies.flatten # return all supplies to one ("flatten") array
end

#all_winter_holiday_supplies(holiday_hash)

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, all_holidays_hash|
    puts "#{season.capitalize}:" # capitalize season and add colon(:)
    #binding.pry
    all_holidays_hash.each do |holiday, supplies|
      puts"  #{holiday.to_s.split('_').map {|holiday_cap| holiday_cap.capitalize! }.join(' ') }: #{supplies.join(", ")}"
      # iterate holidays, convert to string(.to_s), split('_' removes underscore and coverts to array) => ["fourth", "of", "july"],
      # capitalize holidays, join string "Fourth Of July", add colon(:) and space and follow with joined supplies (separated by comma)
      #binding.pry
    end
  end
end

#all_supplies_in_holidays(holiday_hash)

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  holidays_with_bbq = []
  holiday_hash.map do |seasons, all_holidays_hash| # iterates over first level of hash
    all_holidays_hash.map do |bbq_holiday, supplies| # iterates over second level of hash
      if supplies.include?("BBQ")
        holidays_with_bbq << bbq_holiday  # returns holiday(s) if supplies include "BBQ" and shovels to empty array
        #binding.pry
      end
    end
  end
  #binding.pry
  holidays_with_bbq.flatten.compact #.inspect
  # compact returns a copy of self with all nil elements removed.
end

all_holidays_with_bbq(holiday_hash)
