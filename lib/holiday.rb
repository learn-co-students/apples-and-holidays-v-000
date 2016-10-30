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

  return holiday_hash[:summer][:fourth_of_july][1]

end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays

  holiday_hash.each do |season, holiday_name|
    if season == :winter
      holiday_name.each do |key, value|
        holiday_hash[season][key] << supply
      end
    end
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash.each do |season, holiday_name|
    if season == :spring
      holiday_name.each do |key, value|
        holiday_hash[season][key] << supply
      end
    end
  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash.each do |season_key, holiday_names|
    if season_key == season
      holiday_hash[season][holiday_name] = supply_array
    end
  end

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
  holiday_proper_name = ""
  holiday_supply_list = ""

  holiday_hash.each do |season_key, holiday_name|
    puts season_key.to_s.capitalize + ":"
    holiday_name.each do |key, value|
      holiday_name_array = key.to_s.split("_")

      holiday_name_array.each do |word|
        word.capitalize!
      end

      holiday_proper_name = holiday_name_array.join(" ")

      holiday_supply_list = ""
      count = 0
      while count < value.length do
        # binding.pry
        if (count == (value.length-1))
          holiday_supply_list += value[count]
        else
          holiday_supply_list += value[count] + ", "
        end
        count += 1
      end

      puts "  " + holiday_proper_name + ": " + holiday_supply_list

    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  bbq_holiday_array = Array.new

  holiday_hash.each do |season_key, holiday_name|
    if season_key == :spring || season_key == :summer
      holiday_name.each do |holiday_name_key, supply|
        supply.each do |supply_name|
          if supply_name == "BBQ"
            bbq_holiday_array << holiday_name_key
          end
        end
      end
    end
  end

  return bbq_holiday_array
end
