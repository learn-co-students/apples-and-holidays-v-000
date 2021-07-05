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
  holiday_hash[:winter][:christmas]<< supply
  holiday_hash[:winter][:new_years]<< supply

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
  holiday_hash[season] = {holiday_name => supply_array}
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
   holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)

holiday_hash.each do |k, sub_hash|
 puts "#{k.to_s.capitalize!}:"

 sub_hash.each do |name, supplies|
 new_array = []
 arr = name.to_s.split("_")

   arr.each { |x| new_array << x.capitalize! }
        name = new_array.join(" ")
        supplies = supplies.join(", ")
        puts "  #{name}: #{supplies}"
      end
 end

end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  arr = []
     holiday_hash.each do |keii, values_hash|
        values_hash.each do |name, vals|
        if vals.include?("BBQ")
           arr << name
         end
        end
     end
     arr
end
