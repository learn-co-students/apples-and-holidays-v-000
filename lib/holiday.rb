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

  holiday_hash[:summer][:fourth_of_july][1]
  # return the second element in the 4th of July array
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above 
  # add the second argument, which is a supply, to BOTH the 
  # Christmas AND the New Year's arrays
  
  holiday_hash[:winter][:christmas] << supply
  holiday_hash[:winter][:new_years] << supply

  holiday_hash
end
 

def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day] << supply

  holiday_hash
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season][holiday_name]= supply_array 

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
  all_supplies = ""

  holiday_hash.each do |season, holiday|
    all_supplies << season.to_s.capitalize + ":\n"
    holiday.each do |attribute, item_arr|
      all_supplies << "  " + attribute.to_s.gsub('_', " ").split.map(&:capitalize).join(' ') + ":"
      item_arr.each do |item|
        if item == item_arr.last
          all_supplies << " #{item}"
        else
          all_supplies << " #{item},"
        end
      end
      all_supplies << "\n"
    end
  end
  puts all_supplies
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  holiday_names = []

  holiday_hash.each do |season, holiday|
    holiday.each do |attribute, item_arr|
      item_arr.each do |item|
        holiday_names << attribute if item == "BBQ" 
      end
    end
  end

  holiday_names
end


# holiday_hash = {
#       :winter => {
#         :christmas => ["Lights", "Wreath"],
#         :new_years => ["Party Hats"]
#       },
#       :summer => {
#         :fourth_of_july => ["Fireworks", "BBQ"]
#       },
#       :fall => {
#         :thanksgiving => ["Turkey"]
#       },
#       :spring => {
#         :memorial_day => ["BBQ"]
#       }
# }

#   columbus_day_supplies = ["Flags", "Parade Floats", "Italian Food"]

# add_new_holiday_with_supplies(holiday_hash, :fall, :columbus_day, columbus_day_supplies)

