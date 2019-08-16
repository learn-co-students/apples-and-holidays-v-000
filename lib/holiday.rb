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
  desired = ""
  holiday_hash.each do |season, holidays|
    if season == :summer 
      holidays.each do |holiday, items|
        desired = items[1]
      end
    end
  end
  desired
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash.each do |season, holidays|
    holidays.each do |holiday, items|
      if holiday == :christmas || holiday == :new_years
        items.push(supply)
      end
    end
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash.each do |season, holidays|
    holidays.each do |holiday, items|
      if holiday == :memorial_day
        items.push(supply)
      end
    end
  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash.each do |seasons, holidays|
    if seasons == season
      holidays[holiday_name] = supply_array
    end
  end
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  stuff = holiday_hash[:winter].map do |holiday, items|
    items.map do |item|
      item
    end
  end
  stuff.flatten
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  holiday_hash.each do |season, holidays|
    puts "#{season.to_s.capitalize}:"
    holidays.each do |holiday, items|
      correct_spelling = holiday.to_s.capitalize!.split("")
      correct_spelling.each_with_index do |letter, i|
        if letter == "_"
          correct_spelling[i] = " "
          correct_spelling[i+1].upcase!
        end
      end
      puts "  #{correct_spelling.join}: #{items.join(", ")}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  names = []
  holiday_hash.each do |season, holidays|
    holidays.each do |holiday, items|
      if items.include?("BBQ")
        names.push(holiday)
      end
    end
  end 
  names
end







