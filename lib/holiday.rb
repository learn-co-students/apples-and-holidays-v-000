require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash[:winter].each do |holiday, supplies|
    supplies << supply
  end
end

def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season.to_sym][holiday_name.to_sym] = supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  supplies = []
  holiday_hash[:winter].each do |holiday, supply|
    supplies << supply
  end
   return supplies.flatten
end


def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holiday|
    season = season.to_s.capitalize!
    puts "#{season}:"
    holiday.each do |holiday, supplies|
      holiday = holiday.to_s.gsub'_', ' '
      holiday = holiday.split.map{|x|x.capitalize!}.join' '
      puts "  #{holiday}: #{supplies.join', '}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  holiday_hash.map do |season, holidays|
    holidays.map do |holiday, supplies|
      holiday if supplies.include?("BBQ")
    end
  end.flatten.compact
end
