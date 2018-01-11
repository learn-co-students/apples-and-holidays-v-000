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
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash = holiday_hash[:winter]
  christmas = holiday_hash[:christmas]
  christmas << supply

  new_years = holiday_hash[:new_years]
  new_years << supply
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash = holiday_hash[:spring]
  memorial_day = holiday_hash[:memorial_day]
  memorial_day << supply

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array

  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
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
  holiday_hash.each do |season, holidays|
    season_string = season.to_s.capitalize!
    puts "#{season_string}:"

    holidays.each do |holiday, supplies|
      holiday_array = holiday.to_s.split("_")
        holiday_array.each { |event| event.capitalize! }
      holiday_string = holiday_array.join(" ")

      supplies_string = supplies.join(", ")

      puts "  #{holiday_string}: #{supplies_string}"

    end

  end

end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  bbq_holidays = []
  holiday_hash.each do |season, holiday|
    holiday.each do |event, supply|
      supply.each do |item|
        if item == "BBQ"
        bbq_holidays << event
        end
      end
    end
  end
  bbq_holidays
end
