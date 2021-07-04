require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_supplies[:summer][:fourth_of_july][1]
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
      holidays[:memorial_day] << supply
    end
  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash.map do |season_name, holidays|
    if season_name == season
      holidays[holiday_name] = supply_array
    end
  end
end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holidays|
    puts "#{season.capitalize}:"
    holidays.each do |holiday, supplies|
      holiday_name = holiday.to_s.split("_").each {|word| word.capitalize!}.join(" ")
      puts "  #{holiday_name}: #{supplies.join(', ')}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  holidays_with_bbq = Array.new
  holiday_hash.each do |season, holidays|
    holidays.each do |holiday, supplies|
      if supplies.include?("BBQ")
        holidays_with_bbq << holiday
      end
    end
  end
  holidays_with_bbq  
end
