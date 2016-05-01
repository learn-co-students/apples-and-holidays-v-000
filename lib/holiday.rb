require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter].each { |holiday, supply_list| supply_list << supply }
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
  holiday_hash.each do |season_key, holiday_value|
    season = season_key.to_s.capitalize!
    puts "#{season}:"
    holiday_value.each do |holiday_key, supply_list|
      holiday = holiday_key.to_s.split("_")
      holiday.each { |word| word.capitalize! }
      holiday = holiday.join(" ")
      supply_list_string = supply_list.join(", ")
      puts "  #{holiday}: #{supply_list_string}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  bbq_holiday_array = []
  holiday_hash.each do |season_key, holiday_value|
    holiday_value.each { |holiday_key, supply_list| bbq_holiday_array << holiday_key if supply_list.include?("BBQ") }
  end
  bbq_holiday_array
end
