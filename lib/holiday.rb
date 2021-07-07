require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter].each do |holiday, supplies_array|
    supplies_array << supply
  end
end

def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
end

def all_winter_holiday_supplies(holiday_hash)
  new_array = holiday_hash[:winter].collect do |holiday, supply_array|
    supply_array
  end
  new_array.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, all_holidays|
    puts "#{season.to_s.capitalize}:"
    all_holidays.each do |holiday, supplies_array|
      puts "  #{  holiday.to_s.split("_").map {|w| w.capitalize}.join(' ')}: #{supplies_array.join(", ")}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  holiday_array = holiday_hash.map do |season, holidays|
    holidays.map do |holiday, supplies_array|
      if supplies_array.include?("BBQ")
        holiday
      end
    end
  end.flatten.compact
end
