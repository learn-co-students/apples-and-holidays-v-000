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
  holiday_hash.each do |seasons, detail_hash|
    detail_hash.each do |holiday, data|
      if seasons == :winter
        data << supply
      end
    end
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash.each do |seasons, detail_hash|
    detail_hash.each do |holiday, data|
      if holiday == :memorial_day
        data << supply
      end
    end
  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season] = {
    holiday_name => supply_array
  }
end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, data_hash|
    puts "#{season.to_s.capitalize}:"
    data_hash.each do |holiday, supply_array|
      new_holiday = holiday.to_s.split("_").map{ |word| word.capitalize! }
      puts "  #{new_holiday.join(" ")}: #{supply_array.join(", ")}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  names = []
  holiday_hash.each do |season, data_hash|
    data_hash.each do |holiday, supply_array|
      supply_array.each do |supply|
        if supply == "BBQ"
          names.push(holiday)
        end
      end
    end
  end
  names
end







