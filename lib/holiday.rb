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
  holiday_hash[:winter].each { |holiday, supply_array|
    supply_array << supply
  }
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_supplies[:spring][:memorial_day] << supply

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  supply_combined = []
  holiday_hash.each { |season, holiday_bundle|
    if season == :winter
      holiday_bundle.each{|holiday, supply_array|
         supply_combined << supply_array
      }
    end
  }
  supply_combined.flatten
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  holiday_hash.each { |season, holiday_bundle|
    puts season.to_s.capitalize + ":"
      holiday_bundle.each{|holiday, supply_array|
        holiday_name_array = holiday.to_s.split("_")
         holiday_name_array.each{ |holiday_name_one_word|
            holiday_name_one_word.capitalize!
         }
         puts "  " + holiday_name_array.join(" ") + ": " + supply_array.join(", ")
      }
  }
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  return_array = []
  holiday_hash.each{ |season, holiday_bundle|
    holiday_bundle.each{ |holiday, supply_array|
      if supply_array.include?("BBQ")
        return_array << holiday
      end
    }
  }
  return_array
end

#########################








