require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter].each{|hol,suppl| suppl << supply}
end
 

def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  set = []
  holiday_hash[:winter].each do |hol, supp|
    set << supp
  end
  set.flatten
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  holiday_hash.each do |season, hol_hash|
    puts "#{season.capitalize}:"
    hol_hash.each do |name, supp|
      puts "  #{name.to_s.split("_").map(&:capitalize).join(" ")}: #{supp.join(", ")}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  set = []
  holiday_hash.each do |season, hol_hash|
    hol_hash.each do |name, supp|
      if supp.include?("BBQ")
        set << name
      end
    end
  end
  set
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
end







