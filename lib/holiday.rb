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
  holiday_supplies[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above 
  # add the second argument, which is a supply, to BOTH the 
  # Christmas AND the New Year's arrays
  holiday_hash.each do |key, value|
    if key == :winter 
      value.each do |key, value|
        value << "Balloons"
      end 
    end 
  end 
end
 

def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
    holiday_hash.each do |key, value|
  if key == :spring
    value.each do |key, value|
      value << "Table Cloth"
      value << "Grill"
      end
    end
  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  winter_supplies = []
  holiday_hash.each do |key, value|
    if key == :winter
      value.each do |key, value|
        value.each do |item|
          winter_supplies << item 
        end
      end
    end
  end
  winter_supplies
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  holiday_hash.each do |key, value|
    puts "#{key.to_s.capitalize}:"
    #prints each season name
    value.each do |holiday, supplies|
      output_string = "  #{holiday.to_s.split(/_/).each {|word| word.capitalize!}.join(" ")}: "
      output_string += "#{supplies.join(", ")}"
      puts output_string 
    end
  end
end 


def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  bBQ_holidays = Array.new
  holiday_hash.each do |key, value|
    #goes through all the seasons
    value.each do |key2, value2|
      if value2.include?("BBQ")
        bBQ_holidays << key2
      end
    end
  end
  bBQ_holidays
end







