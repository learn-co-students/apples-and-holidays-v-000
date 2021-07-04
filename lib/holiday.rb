require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  winter_hash = holiday_hash[:winter]
  winter_hash.each {|holiday, supply_array| supply_array << supply}
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  winter_supply_array = []
  winter_hash = holiday_hash[:winter]
  winter_hash.each do |holiday, supply_array|
    winter_supply_array << supply_array
  end
  winter_supply_array.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, season_hash|
    puts season.to_s.capitalize! + ":"
    season_hash.each do |holiday, supply_array|
      if holiday.to_s.include?("_")
        holiday_array = holiday.to_s.split("_")
        holiday_array.each{|word| word.capitalize!}
        string = holiday_array.join(" ") + ": "
      else
        string = holiday.to_s.capitalize! + ": "
      end

      supply_array.each do |supply|
          if supply != supply_array.last
            string << supply + ", "
          else
            string << supply
          end
      end
      puts "  " + string
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  bbq_holidays = []
  holiday_hash.each do |season, season_hash|
    season_hash.each do |holiday, supply_array|
      if supply_array.include?("BBQ")
        bbq_holidays << holiday
      end
    end
  end
  bbq_holidays
end
