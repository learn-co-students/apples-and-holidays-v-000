require 'pry'
holiday_supplies = {
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

# return the second element in the 4th of July array
def second_supply_for_fourth_of_july(holiday_hash)
  holiday_supplies[:summer][:fourth_of_july][1]
end

# holiday_supplies is identical to the one above
# add the second argument, which is a supply, to BOTH the
# Christmas AND the New Year's arrays
def add_supply_to_winter_holidays(holiday_supplies, supply)
  holiday_supplies[:winter][:christmas] << supply
  holiday_supplies[:winter][:new_years] << supply
end

# again, holiday_supplies is the same as the ones above
# add the second argument to the memorial day array
def add_supply_to_memorial_day(holiday_supplies, supply)
  holiday_supplies[:spring][:memorial_day] << supply
end

# remember to return the updated supply
def add_new_holiday_with_supplies(holiday_supplies, season, holiday_name, supply_array)
  holiday_supplies[season][holiday_name] = supply_array
  holiday_supplies
end

# return an array of all of the supplies that are used in the winter season
def all_winter_holiday_supplies(holiday_supplies)
  holiday_supplies[:winter].values.flatten
end

# iterate through holiday_supply and print items such that your readout resembles:
# Winter:
#   Christmas: Lights, Wreath
#   New Years: Party Hats
# Summer:
#   Fourth Of July: Fireworks, BBQ
# etc.
def all_supplies_in_holidays(holiday_supplies)
  holiday_supplies.each do |season, holidays|
    puts season.to_s.capitalize + ":"
    holidays.each do |holiday, supplies|
      puts "  #{holiday.to_s.split("_").map { |word| word.capitalize }.join(" ")}: #{supplies.join(", ")}"
    end
  end
end

# return an array of holiday names (as symbols) where supply lists
# include the string "BBQ"
def all_holidays_with_bbq(holiday_supplies)
  holiday_supplies.map do |season, holidays|
    holidays.map do |holiday, supplies|
      holiday if supplies.include?("BBQ")
    end
  end.flatten.compact
end
