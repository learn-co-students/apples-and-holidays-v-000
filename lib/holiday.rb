require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter].each do |holiday,supplys|
    supplys << supply
  end
  return holiday_hash
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
  holiday_hash.each do |season, holidays|
      puts "#{season.capitalize}:"
  holidays.each do |holiday, supplies|
      holiday_array = holiday.to_s.split("_")
  holiday_array.each do |word|
      word.capitalize!
      end
  holiday = holiday_array.join(" ")
  supply_list = supplies.join(", ")
  puts "  #{holiday}: #{supply_list}"
end
end
end

def all_holidays_with_bbq(holiday_hash)
bbq_holidays = []
    holiday_hash.each do |season, season_details|
      season_details.each do |holiday, supply_list|
        if supply_list.include?("BBQ")
          bbq_holidays << holiday
        end
      end
    end
  bbq_holidays
end
