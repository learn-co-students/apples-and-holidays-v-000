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
holiday_hash[:winter][:christmas] << "Balloons"
holiday_hash[:winter][:new_years] << "Balloons"
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  winter_supplies =[]
   		   holiday_supplies[:winter].each_key do |holiday|
       winter_supplies.concat(holiday_supplies[:winter][holiday])
     end
     winter_supplies
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.

  holiday_supplies.each do |seasons, holidays|
      puts "#{seasons.capitalize}:"
        holidays.each do |holiday, items|
          holiday_words_arr = []
          holiday.to_s.split("_").each do |word|
            holiday_words_arr << word.capitalize
          end
          holiday_words = holiday_words_arr.join (" ")
          puts "  #{holiday_words}: #{items.join(", ")}"
        end
      end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  holiday_name = []
  holiday_hash.each do |season, holiday|
    holiday.each do |holiday, supply|
      if supply.include?("BBQ")
        holiday_name << holiday
      end
    end
  end
  holiday_name
end
