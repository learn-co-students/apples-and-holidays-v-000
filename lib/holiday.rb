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

    holiday_hash[:winter].each do |hoilday, value|
      #Hoildays in thei case is our winter, fall, spring, etc
      # shovel in supply
     value << supply
   end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
     holiday_hash[:spring].each do |holiday, value|
       #Note: supply is the second arrgument.
       value << supply
     end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
    holiday_hash[season.to_sym][holiday_name.to_sym] = supply_array
      #   symbols are like string in array... But in Hashes the look like   : spring   etc.
  # .to sym or symbol changes changes anything into symbol
  #  remember to return the updated hash
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
   holiday_hash.each do |seasons, holidays|

     # What ever we put in the pipes dictates whwat we call the keys and the value.
     # we need to pass in the ":" to get the attachment in.
      puts seasons.to_s.capitalize + ":"
      # .to_s means turn to string.
      holidays.each do |holiday, supplies|
    puts "  #{holiday.to_s.split('_').map{|value| value.capitalize}.join(" ")}: #{supplies.join(", ")}"
# binding.pry

  # ('_')  splits the string and create an array at the  underscore....Based on the argument giving.. in the case the underscore...
  # .Turn hoilday into a string,  # .split string at eh under score. ,
  # They Used .map to capitalize at spilt command.
  #gsub   >>>> https://apidock.com/ruby/String/gsub

    end
   end
 end


def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"

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

  #[:fourth_of_july, :memorial_day] Goal.

  # create a new empty array
  array = []
  # within the hash, look at each holiday a.k.a iterate over each Hoildays
  holiday_hash.each do |seasons, holidays|
    holidays.each do |holidays, values|
  # if the holiday's party supplies include "BBQ" ..
  #Note the only 2 hoilday that has BBQ are fourth_of_july & memorial_day
      if values.include?"BBQ"
  # add that holiday to the array
        array.push(holidays)
  # return the array Holidays
    #  holidays_hash[holiday_name.to_sym].each do |names, value|
    # where you place you ending array is IMPORTANT.
      end
    end
  end
  array
end
