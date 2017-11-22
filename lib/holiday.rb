require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter][:christmas] << supply
  holiday_hash[:winter][:new_years] << supply
  holiday_hash
end


def add_supply_to_memorial_day(holiday_hash, supply)
    holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
    holiday_hash[season][holiday_name] = supply_array
    holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  winter = holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holidays|
    puts "#{season.to_s.capitalize.chomp}:"
    holidays.each do |holiday, value|
      puts "  #{holiday.to_s.tr('_', ' ').split.map(&:capitalize).join(' ')}: #{value.join(", ").strip}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  new_array = []
  new_array << holiday_hash[:summer].keys
  new_array << holiday_hash[:spring].keys

  new_array.flatten
end
