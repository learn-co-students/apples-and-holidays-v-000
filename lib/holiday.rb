require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter].each { |holiday, supplies| supplies << supply }
end

def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
end

def all_winter_holiday_supplies(holiday_hash)
  winter_supplies = []
  holiday_hash[:winter].each do |holiday, supplies|
    winter_supplies << supplies
  end
  winter_supplies.join
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, info|
    puts "#{season.capitalize}:"
    info.each do |holiday, supplies|
        holiday_name = holiday.to_s.split("_").collect { |word| word.capitalize }.join(" ")
      puts "  #{holiday_name}: #{supplies.join(", ")}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  bbq_holidays = []
  holiday_hash.each do |season, info|
    info.each do |holiday, supplies|
      supplies.each do |supply|
        if supply == "BBQ"
          bbq_holidays << holiday
        end
      end
    end
  end
  bbq_holidays
end
