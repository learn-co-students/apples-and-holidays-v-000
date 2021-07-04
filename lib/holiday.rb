require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
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
  # return the second element in the 4th of July array
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter].each do |holiday, supplies|
    supplies << supply
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring].each do |holiday, supplies|
    supplies << supply
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
  holiday_hash.each do |seasons, holidays|
    seasons_string = seasons.to_s
    seasons_array = seasons_string.split("_")
    seasons_array.collect! do |seasons|
    seasons.capitalize!
  end
    puts "#{seasons_array.join(" ")}:"
  holidays.each do |holiday, supplies|
    holiday_string = holiday.to_s
    holiday_array = holiday_string.split("_")
    holiday_array.each do |holiday|
      holiday.capitalize!
    end 
    puts "  #{holiday_array.join(" ")}: #{supplies.join(", ")}"
  end 
  end
end

def all_holidays_with_bbq(holiday_hash)
  holidays_that_need_bbq = []
  holiday_hash.each do |seasons, holidays|
    holidays.each do |holiday, supplies|
      if supplies.include?("BBQ")
        holidays_that_need_bbq << holiday 
      end 
    end 
  end 
  holidays_that_need_bbq
end







