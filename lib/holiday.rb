require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash.each do |key,value|
    if key == :winter
      value.each do |holiday,supplies|
      supplies << supply
      end
    end
  end
  holiday_hash
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash.each do |key,value|
    if key == :spring
      value.each do |holiday,supplies|
        if holiday == :memorial_day
        supplies << supply
        end
      end
    end
  end
  holiday_hash
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name]=supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  array = []
  winter = holiday_hash[:winter]
  winter.each do |holiday,supplies|
    supplies.each do |supply|
      array << supply.to_s
    end
  end
  return array
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
    holiday.each do |holiday,supplies|
    array = holiday.to_s.split('_').each{|i| i.capitalize!}.join(' ')
    puts "  #{array}: " + "#{supplies.join", "}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  array = []
  holiday_hash.each do |season, holiday|
    holiday.each do |holiday, supplies|
      if supplies.include?("BBQ")
        array << holiday
      end
    end
  end
  array
end
