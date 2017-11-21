require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash.each do |season, holiday|
    return holiday.values[0][1] if holiday.keys.include?(:fourth_of_july)
  end
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash.each do |season, holidays|
    if season.to_s == "winter"
      holidays.each{ |h, sups| sups.push(supply) }
    end
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash.each do |season, holidays|
    holidays[:memorial_day].push(supply) if holidays.include?(:memorial_day)
  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holidays|
    puts "#{season.to_s.capitalize}:"
    holidays.each do |holiday, supplies|
      puts "  #{holiday.to_s.split('_').map{|s| s.capitalize!}.join(' ')}: #{supplies.join(', ')}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  holiday_hash.values.map{|hash| hash.keys if hash.values[0].include?("BBQ")}.flatten.reject(&:nil?)
end
