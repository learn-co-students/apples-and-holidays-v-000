require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  #given that holiday_hash looks like this:
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
  #return the second element in the 4th of July array

  answer = ""
  holiday_hash.each do |season, value|
    value.each do |holiday, new_value|
      if holiday == :fourth_of_july
        answer = new_value[1]
      end
    end
  end
  answer
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash.each do |season, value|
    value.each do |holiday, new_value|
      if holiday == :christmas
        holiday_hash[:winter][:christmas] <<  supply
      else holiday == :new_years
        holiday_hash[:winter][:new_years] <<  supply
      end
    end
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash.each do |season, value|
    value.each do |holiday, new_value|
      if holiday == :memorial_day
        holiday_hash[:spring][:memorial_day] << supply
      end
    end
  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season] = {holiday_name => supply_array}
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  new_array =[]
  supplies = holiday_hash.each do |season, value|
        new_array << value.values
  end
  new_array.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holidays|
    puts "#{season.to_s.capitalize}:"
    holidays.each do |holiday, supplies|
      capitalized = holiday.to_s.split('_').collect do |caps|
        caps.capitalize!
      end
      puts "  #{capitalized.join(" ")}: #{supplies.join(", ")}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  bbq_holidays = []
  holiday_hash.each do |season, holidays|
    holidays.each do |holiday, supplies|
      if supplies.include? "BBQ"
        bbq_holidays << holiday
      end
    end
  end
  bbq_holidays
end
