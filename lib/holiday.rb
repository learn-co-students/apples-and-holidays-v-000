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
    holiday_supplies[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_supplies[:winter][:christmas] << supply
  holiday_supplies[:winter][:new_years] << supply
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_supplies[:spring][:memorial_day] << supply

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  holiday_hash[season][holiday_name] = supply_array
  # remember to return the updated hash
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
  holiday_hash.each do |key, value|
      key = key.to_s.capitalize! + ":"
      puts key

      value.each do |key2, value2|
        array = key2.to_s.split("_").each do |word|
          word.capitalize!
        end

        supplies = value2.join(" ").split(" ").each do |supply|

          supply.capitalize! if !supply.upcase
        end


        if supplies[0] == "Lights" or supplies[0] == "Fireworks"
          puts "  #{array.join(" ")}: #{supplies.join(", ")}"
        else
          puts "  #{array.join(" ")}: #{supplies.join(" ")}"
        end

      end
    end

  end

  def all_holidays_with_bbq(holiday_hash)
    array = []
    # return an array of holiday names (as symbols) where supply lists
    # include the string "BBQ"
    holiday_hash.each do |key, value|#.collect do |key, value|

      value.each do |k, v|

        v.each do |element|
          if element == "BBQ"
            array << k

          end
        end
      end
    end
    array
  end
