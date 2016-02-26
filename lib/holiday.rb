require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash.each do |season, holidays_hash|
    holidays_hash.each do |holiday, supply_array|
      if holiday == :fourth_of_july
        return supply_array[1]
      end
    end
  end
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash.each do |season, holidays_hash|
    if season == :winter
      holidays_hash.each do |holiday, supply_array|
        supply_array << supply
      end
    end
  end
end

def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash.each do |season, holidays_hash|
    holidays_hash.each do |holiday, supply_array|
      if holiday == :memorial_day
        supply_array << supply
      end
    end
  end 
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season] = {holiday_name => supply_array}
  return holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash.each do |season, holidays_hash|
    if season == :winter
      winter_supplies_array = []
      holidays_hash.each do |holiday, supply_array|
        winter_supplies_array << supply_array
      end
    return winter_supplies_array.flatten
    end
  end
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holidays_hash|
    puts "#{season.to_s.capitalize}:"
    holidays_hash.each do |holiday, supply_array|
      holiday_reformat = holiday.to_s.split("_").collect do |word|
        word.capitalize
      end
    puts "  #{holiday_reformat.join(" ")}: #{supply_array.join(", ")}"
    end
  end
end

  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }

def all_holidays_with_bbq(holiday_hash)
  holiday_array = []
  holiday_hash.each do |season, holidays_hash|
    holidays_hash.each do |holiday, supply_array|
      if supply_array.include?("BBQ")
        holiday_array << holiday
      end
    end
  end
  return holiday_array
end







