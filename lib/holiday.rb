require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # # given that
  # holiday_hash =
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
  holiday_supplies[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash[:winter][:christmas] << supply
  holiday_hash[:winter][:new_years] << supply
  return holiday_hash
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day] << supply
  return holiday_hash
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash

      holiday_hash[season][holiday_name]= supply_array
     return holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
   holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
#   # iterate through holiday_hash and print items such that your readout resembles:
#   # Winter:
#   #   Christmas: Lights, Wreath
#   #   New Years: Party Hats
#   # Summer:
#   #   Fourth Of July: Fireworks, BBQ
#   # etc.
#   holiday_hash.each do |season, holiday|
#       puts "#{season.capitalize}:"
#       holiday.each do |attribute,value|
#         # return "#{attribute}: #{value}"
#         puts "  #{attribute.capitalize}: #{value.join(", ")}"
#       end
#     end
# end
holiday_hash.each do |season, holiday|
    # check if ther is underscore#
    puts "#{season.capitalize}:"
    temp=[]
    str=" "
      holiday.each do |attribute,value|
            temp=attribute.to_s.capitalize!
            i=0
            while i < temp.length do
              if temp[i] == "_" then
                temp[i]=" "
                str=temp[i+1].capitalize!
                temp[i+1]=str
              end
               i+=1
            end
           attribute=temp
        puts "  #{temp}: #{value.join(", ")}"
        i=0
      end
   end
  end
def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  temp=[]
   holiday_hash.each do |season, holiday|
    # temp=[]
     holiday.each do |attribute, value|
      # puts "#{attribute.length}"
      if value.include? "BBQ" then
         temp << attribute
      end
     end
      # puts "#{temp}"
   end
    return temp
  end
