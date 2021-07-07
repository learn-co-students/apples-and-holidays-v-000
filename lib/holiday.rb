require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # return the second element in the 4th of July array
  holiday_supplies[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_supplies[:winter][:christmas] << supply 
  holiday_supplies[:winter][:new_years] << supply 
  end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_supplies[:spring][:memorial_day] << supply 
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_supplies[season][holiday_name] = supply_array
end

def all_winter_holiday_supplies(holiday_hash)
  holiday_supplies[:winter].values.flatten 
end

def all_supplies_in_holidays(holiday_hash)
  holiday_supplies.collect do |season, holidays|
    puts "#{season.to_s.capitalize!}:"
    holidays.collect do |holiday, supplies|
      holiday_capitalized = holiday.to_s.split("_").map(&:capitalize).join(' ')
      puts "  #{holiday_capitalized}: #{supplies.join(", ")}"
    end
  end
end 


def all_holidays_with_bbq(holiday_hash)
  holidays_with_bbq = []
  holiday_supplies.each do |season, holidays|
    holidays.select do |holiday, supplies|
       if supplies.include?("BBQ") == true
         holidays_with_bbq << holiday
      else
        false
      end
    end
  end
  holidays_with_bbq
end







