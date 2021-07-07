require 'pry'

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

# Question 1
def second_supply_for_fourth_of_july(holiday_supplies)
      holiday_supplies[:summer][:fourth_of_july][1]
end

# Question 2
# add the second argument, which is a supply, to BOTH the
# Christmas AND the New Year's arrays
def add_supply_to_winter_holidays(holiday_supplies, supply)
  holiday_supplies[:winter].each do |holidays, supplies|
    supplies  <<  supply
  end
end

# Question 3
# add the second argument to the memorial day array
def add_supply_to_memorial_day(holiday_supplies, supply)
  holiday_supplies.each do |season, holidays|
    holidays.each do |holiday, supplies|
      if holiday == :memorial_day
        supplies  <<  supply
      end
    end
  end
end

# Question 4
# add a new holiday with its supplies array
# remember to return the updated hash
def add_new_holiday_with_supplies(holiday_supplies, season, holiday_name, supply_array)
   holiday_supplies[season][holiday_name] = supply_array
   holiday_supplies
end

# Question 5
# return an array of all of the supplies that are used in the winter season
def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].collect do |holiday, supplies|
    supplies
  end.flatten
end

# Question 6
# iterate through holiday_hash and print items such that your readout resembles:
# Winter:
#   Christmas: Lights, Wreath
#   New Years: Party Hats
# Summer:
#   Fourth Of July: Fireworks, BBQ
# etc.

# Question 6:  DONE
def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holiday|
    puts "#{season.capitalize}:"
    holiday.each do |holiday, supplies|
      holiday_cap = holiday.to_s.split("_").map{|w| w.capitalize}.join(" ")
      puts "  #{holiday_cap}: #{supplies.join(", ")}"
    end
  end
end

# Question 7
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
def all_holidays_with_bbq(holiday_hash)
  holiday_hash.collect do |season, holidays|
    holidays.collect do |holiday, supplies|
      if supplies.include?("BBQ")
        holiday
      end
    end
  end.flatten.compact
end
