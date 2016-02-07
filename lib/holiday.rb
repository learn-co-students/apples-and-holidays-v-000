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
  # holiday_hash.each do |season_hash, holiday_name|
  #   holiday_name.each do |supply|
  #     if holiday_name == :christmas || holiday_name == :new_years
  #     ....
  #     end
  #   end
  # end

  holiday_hash[:winter][:christmas][2] = "Balloons"
  holiday_hash[:winter][:new_years] << "Balloons"
  # add the second argument, which is a supply, to BOTH the 
  # Christmas AND the New Year's arrays
end
 

def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  all_winter_holiday_supplies = []
  holiday_hash.each do |season, holiday_name|
    if season == :winter
      holiday_name.each do |holiday, supply|
        all_winter_holiday_supplies << supply
      end
    end
  end
  all_winter_holiday_supplies.flatten
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  holiday_hash.each do |season, data|
    puts "#{season.capitalize}:"
    data.each do |holiday_name, supplies|
      name_array = holiday_name.to_s.split("_")
      name_array.map {|name| name.capitalize!}
        puts "  #{name_array.join(" ")}: #{supplies.join(", ")}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  holiday_names_with_bbq_array = []
  holiday_hash.each do |season, data|
    data.each do |holiday_name, supplies|
      if supplies.include?("BBQ")
        holiday_names_with_bbq_array.push(holiday_name)
      end
    end
  end
  holiday_names_with_bbq_array
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
end







