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
  holiday_hash.each do |season, holidays_hash|
    holidays_hash.each do |holiday, supplies_array|
      if holiday == :fourth_of_july
        return supplies_array[1]
      end
    end
  end
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash.each do |season, holidays_hash|
    holidays_hash.each do |holiday, supplies|
      supplies << supply if holiday == :christmas || holiday == :new_years
    end
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash.each do |season, holidays_hash|
    holidays_hash.each do |holiday, supplies|
      supplies << supply if holiday == :memorial_day
    end
  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash.each do |orig_season, holiday_supplies|
    if orig_season == season
      holiday_supplies[holiday_name] = supply_array
    end
  end
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  answer = []
  holiday_hash.each do |season, data_hash|
    return data_hash.values.flatten if season == :winter
  end
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  holiday_hash.each do |season, holiday_supplies_hash|
    puts "#{season.to_s.capitalize}:"
    holiday_supplies_hash.each do |holiday, supplies|
      puts "  #{holiday_name_mod(holiday.to_s)}: #{supplies.join(", ")}"
    end
  end
end

def holiday_name_mod(string)
  words = string.split("_")
  words.map { |word| word.capitalize }.join(" ")
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  lets_bbq = []
  holiday_hash.each_value do |holiday_supplies_hash|
    holiday_supplies_hash.each do |holiday, supplies|
      lets_bbq << holiday if supplies.include?("BBQ")
    end
  end
  lets_bbq
end
