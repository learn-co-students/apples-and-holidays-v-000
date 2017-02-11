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

def second_supply_for_fourth_of_july(holiday_supplies)
  holiday_supplies[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_supplies[:winter][:christmas][2] = supply
  holiday_supplies[:winter][:new_years][1] = supply
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_supplies[:spring][:memorial_day][1] = supply
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  winter_supplies = ()
  winter_supplies = holiday_hash[:winter].values.to_s
end

# iterate through holiday_hash and print items such that your readout resembles:
# Winter:
#   Christmas: Lights, Wreath
#   New Years: Party Hats
# Summer:
#   Fourth Of July: Fireworks, BBQ
# etc.

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holiday|
    season = season.to_s.capitalize
    season += ":"
    puts season
    holiday.each do |holiday, supply|
      holiday_supplies_line = ""
      holiday = "  " + holiday.to_s.split("_").map{|word| word.capitalize}.join(" ") + ": "
      holiday_supplies_line = holiday + supply.join(", ")
      puts holiday_supplies_line
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  bbq_holidays = []
  holiday_hash.each do |season, holiday|
    holiday.each do |holiday, supply|
      if supply.include?("BBQ")
        bbq_holidays.push(holiday)
      end
    end
  end
  bbq_holidays
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"

end
