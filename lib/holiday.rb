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
  holiday_supplies[:winter].each do |holiday_hash, supplies|
    supplies << supply
  end
  holiday_supplies
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_supplies[:spring][:memorial_day] << supply
  holiday_supplies
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_supplies[season][holiday_name] = supply_array
  holiday_supplies
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  winter_supplies_array = []
  holiday_supplies[:winter].each do |holiday_hash, supplies|
    supplies.each do |supply|
      winter_supplies_array << supply
    end
  end
  winter_supplies_array
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  season_str = ""
  holiday_str = ""
  holiday_final = ""
  holiday_arr = []
  supplies_str = ""

  holiday_supplies.each do |season, holidays|
    season_str = season.to_s.capitalize!
    puts "#{season_str}:"
      holidays.each do |holiday, supplies|
        holiday_str = holiday.to_s
        supplies_str = supplies.join(", ")
        holiday_arr = holiday_str.split("_")
        holiday_arr_final = holiday_arr.map {|word| word.capitalize!}
        holiday_final = holiday_arr_final.join(" ")
        puts "  #{holiday_final}: #{supplies_str}"
      end
    end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  bbq_array = []

  holiday_supplies.each do |season, holidays|
    holidays.each do |holiday, supplies|
      supplies.each do |supply|
        if supply == "BBQ"
          bbq_array << holiday
        end
      end
    end
  end
  bbq_array
end
