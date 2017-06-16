require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash.each do |season, holidays|
    if season == :winter
      holidays.each do |holiday, supplies|
        supplies << supply
      end
    end
  end
  holiday_hash
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash.each do |season, holidays|
    if season == :spring
      holidays.each do |holiday, supplies|
        supplies << supply
      end
    end
  end
  holiday_hash
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season] = {holiday_name => supply_array}
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].to_s
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
    holiday_hash.each do |season, holidays|
      puts "#{season.to_s.capitalize!}:"
      holidays.each do |holiday, supplies|
        #binding.pry
        holiday_to_str = holiday.to_s.split("_")
        holiday_to_str = holiday_to_str.each { |holiday_name| holiday_name.capitalize! }.join(" ").to_s
        puts "  #{holiday_to_str}: #{supplies.join(", ")}"
      end
    end
  end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  holiday_BBQ = []
  holiday_hash.each do |season, holidays|
    holidays.each do |holiday, supplies|
      if supplies.find { |supply| supply == "BBQ"}
        holiday_BBQ << holiday
      end
    end
  end
  holiday_BBQ
end







