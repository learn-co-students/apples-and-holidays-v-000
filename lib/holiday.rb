require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter].each do |holiday, supply_array|
    supply_array << supply
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring].each do |holiday, supply_array|
    supply_array << supply
  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  new_season = {
    season.to_sym => {
    holiday_name.to_sym => supply_array
    }
  }

  holiday_hash.merge!(new_season)
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.join(" ")
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, data|
  season = season.to_s.capitalize + ":"
  puts season

  data.each do |attribute, value|
    attribute = attribute.to_s.split("_").map(&:capitalize).join(" ")
    value = value.join(", ")
    puts "  #{attribute}: #{value}"
  end
end


def all_holidays_with_bbq(holiday_hash)
  holiday_array = []
  holiday_hash.each do |season, holiday_info|
    holiday_info.each do |holiday, supply|
      if supply.include?("BBQ")
        holiday_array << holiday
      end
    end
  end
  holiday_array
end
end



