require 'pry'

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
end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holidays_hash|
    puts "#{season.to_s.capitalize!}:"
    holidays_hash.each do |holiday, supplies_array|
      puts "  #{holiday.to_s.split("_").collect{|word| word.capitalize!}.join(" ")}: #{supplies_array.join(", ")}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  holidays_with_bbqs = Array.new
  holiday_hash.collect do |season, holidays_hash|
    holidays_hash.collect do |holiday, supplies_array|
      if supplies_array.include?("BBQ")
        holidays_with_bbqs << holiday
      end
    end
  end
  holidays_with_bbqs
end
