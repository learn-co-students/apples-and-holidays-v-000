require 'pry'

holiday_supplies =
{
  :winter => {
    :christmas => ["Lights", "Wreath"],
    :new_years => ["Party Hats"]
  },
  :summer => {
    :fourth_of_july => ["Fireworks", "BBQ"]
  },
  :fall => {
    :thanksgiving => ["Turkey"]
  },
  :spring => {
    :memorial_day => ["BBQ"]
  }
}

def second_supply_for_fourth_of_july(holiday_supplies)
  holiday_supplies[:summer][:fourth_of_july][1]

#   arr = []
#     holiday_hash.each do |name, value|
#       value.each do |var, item|
#        if var == :fourth_of_july
#          item.find{|grocery| arr << grocery if grocery == "BBQ"}
#   # return the second element in the 4th of July array
#     end
#   end
# end
# return arr.join("")
end

def add_supply_to_winter_holidays(holiday_supplies, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  add_supply = holiday_supplies[:winter]
  both = add_supply[:christmas] << supply
  add_nye = holiday_supplies[:winter]
  last = add_nye[:new_years] << supply
  return holiday_supplies
end


def add_supply_to_memorial_day(holiday_supplies, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  add_mem = holiday_supplies[:spring]
  add_one = add_mem[:memorial_day] << supply
  holiday_supplies[:spring][:memorial_day] == supply
end

def add_new_holiday_with_supplies(holiday_supplies, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash

end

def all_winter_holiday_supplies(holiday_supplies)
  # return an array of all of the supplies that are used in the winter season
  holiday_supplies[:winter].each do |name, value|
    value
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

end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"

end
