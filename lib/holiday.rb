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
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash[:winter].each do |holiday, supplies|
    supplies << supply
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
    holiday_hash[season] = {
      holiday_name => supply_array
    }

    return holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
    array = []
    holiday_hash[:winter].each do |holiday, supply|
              array << supply
        end
    return array.flatten
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.

  holiday_hash.each do |season, holiday|
      season = season.to_s
      puts "#{season.capitalize!}:"
          holiday.each do |holidays, supplies|
            holidayy = holidays.to_s
              holiday_name = holidayy.split("_").each do |name|
                name.capitalize!
              end
              final_holiday = holiday_name.join(" ")
              final_supply = supplies.join(", ")
        puts "  #{final_holiday}: #{final_supply}"
        end #holiday.each
    end #holidays_hash.each
end #all_supplies_in_holidays

def all_holidays_with_bbq(holiday_hash)
    # return an array of holiday names (as symbols) where supply lists
    # include the string "BBQ"
    final_array = []
    holiday_hash.each do |season, holiday|
        holiday_hash[season].each do |holiday, supply|
          holiday_hash[season][holiday].each do |supply|
                if supply == "BBQ"
                      final_array << holiday
                end
          end
            #if supply.include?("BBQ")
                #final_array << holiday
            #end
        end
    end
    return final_array
end
