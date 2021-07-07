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
  holiday_hash[:summer][:fourth_of_july][1] #calls the 2nd value (start from 0)
  #of the :fourth_of_july hash inside :summer
  #no need for iteration of ifs and elses.
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
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
  holiday_hash[season][holiday_name] = supply_array #creates a new season,
  #holiday_name and new supply array from the given parameters.
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  all_winter_supplies = []
  holiday_hash[:winter].each do |holiday|
    holiday[1].each do |supply| #using pry I realized that I .eached too many times
      all_winter_supplies << supply #I made a new array all together and returned it.
    end #pry helps!
  end
  all_winter_supplies
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  holiday_hash.each do |season, holiday|
    puts "#{season.capitalize}:" #here is better for the season. otherwise it puts it more than once.
   #reminder! "#{}"
    holiday.each do |holiday_name,supplies| #pry and hashes go together like bacon and eggs
      puts "  #{holiday_name.to_s.split("_").map {|x| x.capitalize}.join(" ")}: " + "#{supplies.join(", ")}"
      #.map iterates over an array
      #in this case {} is better than do end
      #and makes changes within a block
      #spits out new array with the changes like collect!
      #map is permament
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  holidays_with_bbqs = []
  holiday_hash.each do |season,holiday|
    holiday.each do |holiday_name,supply_array|
      if supply_array.include?("BBQ")
        holidays_with_bbqs << holiday_name
      else
      end
    end
  end
  holidays_with_bbqs
end
