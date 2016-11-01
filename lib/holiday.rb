require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  return holiday_supplies[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_supplies[:winter].each do |key, value|
   value << supply
 end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_supplies[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten
  # return an array of all of the supplies that are used in the winter season
end

def all_supplies_in_holidays(holiday_hash)
  holiday_supplies.map do |season, holiday|
    puts "#{season.to_s.capitalize!}:"
    holiday.map do |holiday_name, supplies|
      puts "  " + holiday_name.to_s.split("_").map {|lowercase_holiday| lowercase_holiday.capitalize!}.join(" ") + ": " + supplies.join(", ")
      end
  end

end

def all_holidays_with_bbq(holiday_hash)
  bbq_holidays = []
  holiday_supplies.map do |season, holidays|
    holidays.each do |holiday_name, supplies|
      if supplies.include?("BBQ")
          bbq_holidays << holiday_name
      end
    end
  end
  bbq_holidays
end
