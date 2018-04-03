require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter][:christmas] << supply
  holiday_hash[:winter][:new_years] << supply
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  supplies = []
  winter_holidays = holiday_hash[:winter]
  winter_holidays.each do |holiday, decorations|
      supplies << decorations
  end
  supplies = supplies.flatten
  supplies
end


def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holidays|
    puts "#{season.capitalize}:"
    holidays.each do |holiday, decorations|
      puts "  #{holiday.to_s.split("_").map {|x| x.capitalize}.join(" ")}: #{decorations.join(", ")}"
    end
  end

end


def all_holidays_with_bbq(holiday_hash)
  new_array = []
  holiday_hash.each do |season, holiday|
    holiday.each do |holiday, supplies|
      if supplies.include?("BBQ") 
        new_array << holiday
      end
    end
  end
  new_array
end
