require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash.each do |season, holiday_hashed|
    holiday_hashed.each do |holiday, event|
      if holiday == :fourth_of_july
        return event[1]
      end
    end
  end
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash.each do |season, holiday_hashed|
    holiday_hashed.each do |holiday, event|
      if holiday == :christmas || holiday == :new_years
        event << supply
      end
    end
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash.each do |season, holiday_hashed|
    holiday_hashed.each do |holiday, event|
      if holiday == :memorial_day
        event << supply
      end
    end
  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  return holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  winter_supplies = []

  holiday_hash.each do |season, holidays|
    if season == :winter
      holidays.each do |holiday, supply|
        winter_supplies << supply
      end
    end
  end
  return winter_supplies.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holiday_and_supply|
    puts "#{season.to_s.capitalize}:"

    holiday_and_supply.each do |holiday, supply|
      holiday_cap = []

      holiday.to_s.split("_").each do |holiday_split|
        holiday_cap << holiday_split.capitalize
      end

      puts "  #{holiday_cap.join(" ")}: #{supply.join(", ")}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  bbq_array = []
  holiday_hash.each do |season, holiday_and_supply|
    holiday_and_supply.each do |holiday, supply_array|
      supply_array.each do |supply|
        if supply == "BBQ"
          bbq_array << holiday
        end
      end
    end
  end

  bbq_array
end
