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
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash[:winter][:christmas][2] = supply
  holiday_hash[:winter][:new_years][1] = supply

end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day][1] = supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = []
  supply_array.each_with_index do |supply, index|

    holiday_hash[season][holiday_name][index] = supply
  end
  holiday_hash

end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  holiday_hash[:winter].values.flatten

end

def string_clean(symbol)
  string = symbol.to_s.gsub("_", " ")
  string << ":"
  out_string = ""
  array = string.split
  array.each_with_index do |word, index|
    out_string << word.capitalize!
    if index < array.length - 1
      out_string << " "
    end
  end
  out_string
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  holiday_hash.each do |season, event_hash|
    string = string_clean(season)
    puts string
    event_hash.each do |name, supplies|
      string = string_clean(name)
      display_string = "  "
      display_string << string
      supplies.each_with_index do |string, index|
        display_string << " "
        display_string << string
        if index < supplies.length - 1
          display_string << ","
        end
      end
      puts display_string
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  bbq_holidays = []
  holiday_hash.each do |season, event_hash|
    event_hash.each do |name, supplies|
      if supplies.include?("BBQ")
        bbq_holidays << name
      end
    end
  end
  bbq_holidays
end
