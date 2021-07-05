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
  solution = holiday_hash[:summer][:fourth_of_july]
  solution = solution[1]
  solution
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash.each do |season, data|
    if season == :winter
      data.each do |holiday, supplies|
        supplies << supply
      end
    end
  end
end

def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  supplies = holiday_hash[:spring][:memorial_day]
  supplies << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end

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

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  winter_stuff = []
  holiday_hash.collect do |season, data|
    if season == :winter
      data.collect do |holiday, supplies|
        winter_stuff << supplies
      end
    end
  end
  winter_stuff.flatten
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  holiday_hash.each do |season, data|
    season = season.to_s
    season.capitalize!
    puts "#{season}:"
    data.each do |holiday, supplies|
      holiday = holiday.to_s
      holiday = holiday.split("_")
      holiday.each do |word|
        word.capitalize!
      end
      holiday = holiday.join(" ")
      supplies = supplies.join(", ")
      puts "  #{holiday}: #{supplies}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  bbq_array = []
  holiday_hash.collect do |season, data|
    data.collect do |holiday, supplies|
      if supplies.include?("BBQ")
        bbq_array << holiday
      end
    end
  end
  bbq_array
end
