require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter].each do |holiday, supplies|
    supplies << supply
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
end

def all_winter_holiday_supplies(holiday_hash)
  all_supplies = []
  holiday_hash[:winter].each do |holiday, supplies|
      supplies.each do |supply|
        all_supplies << supply
      end
    end
  return all_supplies
end


def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holidays|
     puts "#{season.to_s.capitalize}:"
     holidays.each do |holiday, supplies|
       holiday = holiday.to_s.split("_").map {|word| word.capitalize}.join(" ")
       supplies = supplies.join(", ")
       puts "  #{holiday}: #{supplies}"
     end
   end
 end

def all_holidays_with_bbq(holiday_hash)
  bbq_holiday = []
    holiday_hash.each do |season, holidays|
      holidays.each do |holidays, supplies|
        if supplies.include?("BBQ")
            bbq_holiday << holidays
        end
      end
    end
    bbq_holiday
  end
