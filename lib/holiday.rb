require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
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
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter].each do |key, value|
    holiday_hash[:winter][key] << supply
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season_key, season_hash|
    season = season_key.to_s
    season.capitalize!
    puts "#{season}:"
    holiday_hash[season_key].each do |holiday_key, specific_holiday_hash|
      holiday = holiday_key.to_s
      if holiday.include?('_')
        holiday.gsub!('_',' ')
      end
      holiday = holiday.split.map(&:capitalize!).join(' ')
      #puts "#{holiday}:"
      supply_string = ""
      #holiday_hash[season_key][holiday_hash]
      specific_holiday_hash.each_with_index do |supply, index|
        supply_name = supply
        #binding.pry
        if (index < (specific_holiday_hash.length - 1))
          supply_string = supply_string + supply_name + ", "
        else
          supply_string = supply_string + supply_name
        end
      end
      puts "  #{holiday}: #{supply_string}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  return_array = []
holiday_hash.each do |season_key, season_hash|
  holiday_hash[season_key].each do |specific_holiday_key, specific_holiday_hash|
    if specific_holiday_hash.include?("BBQ")
      return_array << specific_holiday_key
    end
  end
end
return_array
end
