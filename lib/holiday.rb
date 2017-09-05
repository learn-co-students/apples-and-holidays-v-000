require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
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
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter][:christmas].push(supply)
  holiday_hash[:winter][:new_years].push(supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays

end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day].push(supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # remember to return the updated hash

end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten
  # return an array of all of the supplies that are used in the winter season

end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |seasons, holidays|
   puts "#{seasons.to_s.capitalize}:"
   holidays.each do |holiday, items|

      individual_holiday = holiday.to_s.capitalize
       puts "  #{individual_holiday}: #{items.flatten}"
   end
  end
end

def all_holidays_with_bbq(holiday_hash)
  holiday_hash.each do |seasons, holidays|
      if holidays.values.include?("BBQ")
        puts holidays
      end
  end
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"

end
