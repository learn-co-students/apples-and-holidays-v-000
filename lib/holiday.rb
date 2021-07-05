require 'pry'


# holiday_supplies = {
#     :winter => {
#       :christmas => ["Lights", "Wreath"],
#       :new_years => ["Party Hats"]
#     },
#     :summer => {
#       :fourth_of_july => ["Fireworks", "BBQ"]
#     },
#     :fall => {
#       :thanksgiving => ["Turkey"]
#     },
#     :spring => {
#       :memorial_day => ["BBQ"]
#     }
#   }
#
def second_supply_for_fourth_of_july(holiday_supplies)
  holiday_supplies[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_supplies, supply)
  holiday_supplies[:winter].each do |key, value|
    holiday_supplies[:winter][key] << supply
  end
end


def add_supply_to_memorial_day(holiday_supplies, supply)
  holiday_supplies[:spring][:memorial_day] << supply
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
end

def add_new_holiday_with_supplies(holiday_supplies, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_supplies[season][holiday_name] = supply_array
  holiday_supplies
end

def all_winter_holiday_supplies(holiday_supplies)
    winter_supplies = holiday_supplies[:winter].values
    winter_supplies.flatten
end

def all_supplies_in_holidays(holiday_supplies)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.

  holiday_supplies.each do |season, holidays|
    puts season.to_s.capitalize + ":"
    holidays.each do |holiday, supply|
      puts "  " + holiday.to_s.split("_").each {|word| word.capitalize!}.join(" ") + ": " + supply.join(", ")
      end
    end
  end



def all_holidays_with_bbq(holiday_supplies)
  holiday_bbq_array = []
  holiday_supplies.each do |season, holidays|
    holidays.each do |holiday, supplies|
      if supplies.include?("BBQ")
        holiday_bbq_array << holiday
        end
      end
    end
    holiday_bbq_array
  end
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
