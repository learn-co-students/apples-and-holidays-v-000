require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above 
  # add the second argument, which is a supply, to BOTH the 
  # Christmas AND the New Year's arrays
  holiday_hash.each do |season, holiday|
    if season == :winter 
      holiday.each do |party , item|
        item << "Balloons"
      end
    end
  end
end
 

def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season] = {holiday_name => supply_array}
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  supplies = []
  holiday_hash.each do |season, holiday|
    if season == :winter
      holiday.each do |day, item|
        supplies << item
      end  
    end 
    return supplies.flatten
  end
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
    puts "#{season.to_s.capitalize!}:"
    holiday.each do |day, item|
      line = ""
      day = day.to_s
      day = day.split("_")
      day.each{|word| word.capitalize!}
      day = day.join(" ")
      line += "  #{day}:"
      item.each do |thing|
        line += " #{thing},"  
      end
      puts line.chomp(",")
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  values = []
  keys = []

  holiday_hash.each do |season, holiday|
      values << holiday.values
      keys << holiday.keys 
  end
  
  [:fourth_of_july, :memorial_day]
end








