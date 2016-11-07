require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
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
  # return the second element in the 4th of July array
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash[:winter][:christmas] << "Balloons"
  holiday_hash[:winter][:new_years] << "Balloons"
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
    holiday_hash[season][holiday_name] = supply_array
end

def all_winter_holiday_supplies(holiday_hash)
    holiday_supplies[:winter].map do |holiday, supplies|
      supplies

  end.flatten
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
   puts "#{season.to_s.capitalize!}:"
   holidays.each do |holiday, supplies|
    binding.pry
    end
 end



 #holiday_hash.to_s |holday, supply|
 #holiday_hash.split |holday, supply|
 #holiday_hash.capitalize! |holday, supply|
 #holiday_hash.join |holday, supply|

 #holidays = holiday_hash.to_s
 #holiday_names = holidays.split
 #holiday_caps = holiday_names.capitalize!


  #holiday_supplies[:winter].map do |winter_holiday, winter_supplies|
    #winter_holiday_and_supplies
  #end
  #holiday_supplies[:summer].map do |summer_holiday, summer_supplies|
    #summer_holiday_and_supplies
  #end
  #holiday_supplies[:fall].map do |fall_holiday, fall_supplies|
    #fall_holiday_and_supplies
  #end
  #holiday_supplies[:spring].map do |spring_holiday, spring_supplies|
    #spring_holiday_and_supplies
#end.flatten

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"

end
