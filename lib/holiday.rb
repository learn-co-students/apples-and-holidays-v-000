require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # return the second element in the 4th of July array
holiday_supplies[:summer][:fourth_of_july][1]    
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash.each do |seasons, holidays|
    holidays.each do |holiday, supplies|
      if holiday == :christmas || holiday == :new_years
        supplies << supply
      end
    end    
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash.each do |seasons, holidays|
    holidays.each do |holiday, supplies|
      if holiday == :memorial_day
        supplies << supply
      end
    end
  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_supplies[season][holiday_name] = supply_array
end

def all_winter_holiday_supplies(holiday_hash)
  holiday_supplies[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, list|
    puts "#{season.to_s.capitalize!}:"
      list.each do |holiday, supplies|
          holiday = holiday.to_s.capitalize!
        if holiday.include?("_")
          holiday = holiday.split("_")
          holiday.collect {|word| word.capitalize!}
          holiday = holiday.join(" ") 
        end
        supplies = supplies.join(", ")
        puts "  #{holiday}: #{supplies}"
      end
  end
end

def all_holidays_with_bbq(holiday_hash)
  holidays = []
  holiday_supplies.each do |season, list|
    list.each do |holiday, supplies|
      if supplies.include?("BBQ")
        holidays << holiday
      end
    end
  end
  holidays
end







