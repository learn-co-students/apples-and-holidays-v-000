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
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash[:winter].each do |key, value|
    #binding.pry
    holiday_hash[:winter][key] << supply
  end
  holiday_hash
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day] << supply
  holiday_hash
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
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
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

# holiday_hash = {
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
#
# all_supplies_in_holidays(holiday_hash)
