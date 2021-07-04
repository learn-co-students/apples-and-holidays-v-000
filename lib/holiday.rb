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
  # return the second element in the 4th of July array
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash.each do |key, value|
    if key == :winter
      value.each do |key, value|
        value << supply
      end
    end
  end
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash.each do |key, value|
    if key == :spring
      value.each do |key, value|
        value << supply
      end
    end
  end
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  # code here
  # remember to return the updated hash

end

def all_winter_holiday_supplies(holiday_hash)
  holiday_supplies[:winter].values.flatten
  # return an array of all of the supplies that are used in the winter season

end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |key, value|
      puts "#{key.capitalize}:"
    value.each do |key2, value2|
      holiday = key2.to_s.split('_').collect {|word| word.capitalize}.join(' ')
      puts "  #{holiday}: #{value2.join(', ')}"
    end
  end
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.

end

def all_holidays_with_bbq(holiday_hash)
  bbq_holiday = []
  holiday_hash.each do |key1, value|
    value.each do |key2, value|
      if value.include?("BBQ")
        bbq_holiday << key2
      end
    end
  end
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
bbq_holiday
end







