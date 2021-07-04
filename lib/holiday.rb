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
  winter_holiday_supplies = holiday_hash[:winter].values
  winter_holiday_supplies.each {|holiday| holiday << supply}


end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day] << supply
end
require 'pry'
def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
    holiday_hash[season] = {holiday_name => supply_array}

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
  holiday_hash.each do |season, supplies_by_holiday_hash|
    season_s = season.to_s.split('_').map(&:capitalize).join(' ')

    puts "#{season_s}:"

      supplies_by_holiday_hash.each do |holiday, supplies_array|
        holiday_s = holiday.to_s.split('_').map(&:capitalize).join(' ')

        supplies_s = supplies_array.join(", ")

        puts "  #{holiday_s}: #{supplies_s}"
      end
    end
end
require 'pry'
def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  keys = []
  holiday_hash.each do |season, holidays_with_supply_hash|
    holidays_with_supply_hash.each do |holiday, supply|
      if supply.include?("BBQ")
        keys << holiday
      end
    end
  end
  keys
end
