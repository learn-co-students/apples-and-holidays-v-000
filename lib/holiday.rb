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
  holiday_supplies[:summer][:fourth_of_july][1]

end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter].each do |holiday, data|
    data << supply
  end
  
end
 

def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].collect {|key, value| value}.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holiday|
    puts "#{season.to_s.capitalize}:"

    holiday.each do |holiday, supplies|
      holiday_string = holiday.to_s.split("_").collect(&:capitalize).join(" ")
      supply_string = supplies.join(', ')
      puts "  #{holiday_string}: #{supply_string}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  bbq_array = []

  holiday_hash.each do |season, holiday|
    holiday.each do |holiday, supplies|
      bbq_array << holiday if supplies.any? {|bbq| bbq == "BBQ"}
    end
  end
  bbq_array
end







