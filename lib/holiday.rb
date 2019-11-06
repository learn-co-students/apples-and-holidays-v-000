require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter][:christmas]<<"Balloons"
  holiday_hash[:winter][:new_years]<<"Balloons"
end


def add_supply_to_memorial_day(holiday_hash, supply)
    holiday_hash[:spring][:memorial_day]<<supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values().flatten
end

def all_supplies_in_holidays(holiday_hash)
  new_hol_array = nil
  new_supp = nil
  holiday_hash.each do |season, data|
      puts "#{season}:".to_s.capitalize!
        data.each do |holiday, supplies|
          holiday_string = holiday.to_s
          holiday_array = holiday_string.split("_")
          i= 0
          while i < holiday_array.length
            holiday_array[i].capitalize!
            i +=1
          end
            new_hol_array = holiday_array.join(" ")
            new_supp = supplies.join(", ")
            puts "  #{new_hol_array}: #{new_supp}"
        end
  end
end

def all_holidays_with_bbq(holiday_hash)
  i=0
  new_holiday = []
    holiday_hash.each do |season, data|
      data.each do |holiday, supplies|
        if supplies.include?("BBQ")
          new_holiday << holiday
        end
      end
    end
    new_holiday
end
