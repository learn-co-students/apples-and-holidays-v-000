require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1].to_s
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash.each do |season, holidays|
    if season == :winter
      holidays.each do |holiday, supplies|
        supplies << supply
      end
    end
  end
end
 

def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash.each do |season, holidays|
    if season == :spring
      holidays.each do |holiday, supplies|
        supplies << supply
      end
    end
  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten
  
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holydays|
    puts "#{season.to_s.capitalize!}:"
    holydays.each do |day, supplies|
        puts "  #{day.to_s.split("_").map(&:capitalize).join(" ")}: #{supplies.join(", ")}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
holiday_names = []

  holiday_hash.each do |season, holidays|
    holidays.each do |holiday, supplies|
      if supplies.include? "BBQ"
        holiday_names << holiday
      end
    end
  end
  holiday_names
end







