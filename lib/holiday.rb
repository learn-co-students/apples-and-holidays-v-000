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
  holiday_hash[:spring].each do |holiday, supplies|
    supplies << supply if holiday == :memorial_day
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
  holiday_hash.each do |season, data|
    puts "#{season.to_s.capitalize}:"
    data.each do |holiday, supplies|
      holiday_array = holiday.to_s.split("_").each do |element|
        element.capitalize!
      end
      puts "  #{holiday_array.join(" ")}: #{supplies.join(", ")}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  holidays_with_bbq = []
  holiday_hash.each do |season, data|
    data.each do |holiday, supplies|
      holidays_with_bbq << holiday if supplies.include?("BBQ")
    end
  end
  holidays_with_bbq
end
