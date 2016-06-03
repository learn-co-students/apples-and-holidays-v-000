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
require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1] # returns the string 'BBQ' without hardcoding it       
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash[:winter].each do | holiday, values |
      holiday_hash[:winter][holiday]<< supply.to_s
  end
  holiday_hash[:winter] #return new the new arrays
end

def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply # Adds a supply to Memorial Day
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array #adds a new holiday and its associated supplies to any season
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten #return one array of all the supplies in winter season
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  array = []
  holiday_hash.each do | season, holidays |
    puts "#{season.capitalize}:"

     holidays.each do | holiday, supplies |
        array = holiday.to_s.split('_')

        array.collect do |word|
          word.capitalize!
          # binding.pry
        end
        puts "  #{array.join(' ')}: #{supplies.join(', ')}" #puts it outside if the last array so that it doesn't repeat 3 times
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"\\
  array=[]

     holiday_hash.collect do | season, holiday_names |

       holiday_names.collect do | holiday, supplies | #collect the individual holidays and their values

          if supplies.include?("BBQ") #check if any of the values are the "BBQ" string
             array << holiday  # add the holiday names that have the "BBQ" string
            #binding.pry
          end
       end
     end
  array #return the new array with the names of the holiday names as symbols
end
