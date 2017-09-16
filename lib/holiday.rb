require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash.each do |season, holiday|
    if season == :winter
      holiday.values.each { |holiday| holiday << supply }
    end
  end
end

def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash.each do |season, holiday|
    if season == :spring
      holiday.values.each { |holiday| holiday << supply}
    end
  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holiday|
    puts "#{season.to_s.split("_").join(" ").capitalize}:"
    holiday.each do |holiday, supplies|
      puts "  #{holiday.to_s.split("_").map{ |word| word.capitalize }.join(" ")}: #{supplies.join(", ")}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  bbq_days = []
  holiday_hash.each_value do |holiday|
    holiday.each do |holiday, supplies|
      holidays << holiday if supplies.include?("BBQ")
    end
  end
  bbq_days
end
