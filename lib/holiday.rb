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
  return holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash[:winter][:christmas] << supply
  holiday_hash[:winter][:new_years] << supply


end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day] << supply

end


def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash

  new = {holiday_name => supply_array}
  holiday_hash[season].merge!(new)

  return holiday_hash



end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  return holiday_hash[:winter].values.flatten

end

def all_supplies_in_holidays(holiday_hash)
  str = ""
  holiday_hash.each do |seasons, holidays|
    puts seasons.to_s.capitalize + ":"
    holidays.each do |holiday_name, supplies|
     str = holiday_name.to_s.capitalize.split("_")
     str.each { |cap| cap.capitalize!}
     str_cap = "  " + str.join(" ") + ": " + supplies.join(", ")
     puts str_cap
    end
  end
end








def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  hol = []
  holiday_hash.each do |season, holiday_dic|
    holiday_dic.each do |holiday_name, supply|

      supply.each do |sup|

        if sup == "BBQ"

          hol.push( holiday_name)
        end
      end
    end
  end
  return hol
end
