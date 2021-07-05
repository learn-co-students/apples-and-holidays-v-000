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
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter].each do |holiday, supplies|
    supplies << supply
  end
  # holiday_hash[:winter].values[0] << supply
  # holiday_hash[:winter].values[1] << supply
end

def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season] = {holiday_name => supply_array}
end

def all_winter_holiday_supplies(holiday_hash)
  # holiday_hash[:winter].values.flatten
  holiday_supplies[:winter].map do |holiday, supplies|
   supplies
 end.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holi_hash|
    puts season.to_s.capitalize! + ":"
    holi_hash.each do |holiday, supplies|
      caps_holiday = holiday.to_s.split("_").collect {|name| name.capitalize!}.join(" ")
      puts "  #{caps_holiday}: #{supplies.join(", ")}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  bbq = []
  holiday_hash.each do |season, holiday_data|
    holiday_data.each do |holiday, data_array|
      bbq << holiday if data_array.include?("BBQ")
    end
  end
  bbq
end
