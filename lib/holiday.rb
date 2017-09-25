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
  holiday_hash[:winter][:christmas][2] = supply
  holiday_hash[:winter][:new_years][1] = supply
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day][1] = supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].collect do |holiday, supply_array|
    supply_array.collect do |supply|
      supply
    end
  end.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.collect do |season, holiday_supplies|
    holiday_supplies.collect do |holiday, supply_array|
      if holiday == :new_years || holiday == :fourth_of_july || holiday == :memorial_day
        new_holiday = holiday.to_s.gsub(/_/, " ").split
        new_holiday.each do |word|
          word.capitalize!
        end
      else
        new_holiday = holiday.capitalize
      end
      puts "#{season.capitalize}:"
      puts "  #{new_holiday}: #{supply_array.join(", ")}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  holidays_with_bbqs = []
  holiday_hash.collect do |season, holiday_supplies|
    holiday_supplies.collect do |holiday, supply_array|
      holidays_with_bbqs << holiday if supply_array.include?("BBQ")
    end
  end.flatten
  holidays_with_bbqs
end
