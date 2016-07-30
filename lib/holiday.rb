require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end
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


def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above 
  # add the second argument, which is a supply, to BOTH the 
  # Christmas AND the New Year's arrays
  holiday_hash.each do |season, holiday|
    if season == :winter
      holiday.each do |holkey, supply_array| 
        supply_array << supply
      end
    end
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
  new_hol_hash = {holiday_name => supply_array}
  holiday_hash[season].merge!(new_hol_hash) #add new hol hash to existing hol hash at season level
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  winter_hash = holiday_hash[:winter]
  winter_hash.values.flatten
end
#{
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
require 'pry'
def all_supplies_in_holidays(holiday_hash)
 
    holiday_hash.each do |season, holidays|
      sublist = holiday_hash[season] #return value is an array of hash-values {holiday => supply}
      puts "#{season.to_s.capitalize}:"

      sublist.each do |holiday, supply| #for each keyvalue pair in hash
        cap = holiday.to_s.split("_") #sym - string, split into ary

        cap.map do |word| #itexrate over word array
          word.capitalize! #capitalize each word
        end #
        cap #capitalized word array
        puts "  #{cap.join(" ")}: #{supply.join(", ").to_s}"
      end
    end
end



def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ" 
   ary = []
 holiday_hash.each do |season, hol_hash|
   

    hol_hash.map do |holiday, supply|
      
      if supply.include?("BBQ")
        ary << holiday
      end
      
    end
  end
  ary
end


#   holiday_hash.each do |season, holidays| #:season, :hash of holidaysupply pairs
#     hol_supply_hash = holiday_hash[season][holidays] #hash of holiday-supplies

#     ary = []
#     hol_supply_hash.each do |holiday, supply|
#       if supply.include?("BBQ")
#         ary << holiday
#       end
#     ary  
#     end
#   end
# end