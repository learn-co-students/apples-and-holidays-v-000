require 'pry'

  # holiday_hash =
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

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash.each do |season, holidays|
    if season == :winter
      holidays.each do |attribute, data|
        data << supply
      end
    end
    holiday_hash
  end
end

def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash.each do |season, holidays|
    if season == :spring
      holidays.each do |attribute, data|
        data << supply
      end
    end
    holiday_hash
  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
      holiday_hash[season] = {holiday_name => supply_array}
end
  
def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter][:new_years] << "Lights" 
  holiday_hash[:winter][:new_years] << "Wreath"
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holidays|
      puts season.capitalize.to_s + ":"
    holidays.each do |holiday, supplies|
      new_holiday = holiday.to_s.gsub("_"," ").split(" ")
      new_holiday.each {|word| word.capitalize!}
      new = new_holiday.join(' ')
        puts "  " + new + ": " + supplies.join(', ')
    end
  end  
end


def all_holidays_with_bbq(holiday_hash)
  bbq_holidays = []
  holiday_hash.each do |season, holidays|
    holidays.each do |holiday, supplies|
       bbq_holidays << holiday if supplies.include?("BBQ")
    end
  end
  bbq_holidays
end