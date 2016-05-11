require 'pry'


   holiday_hash = {
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
holiday_supplies[:summer][:fourth_of_july][1]

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
  holiday_hash[:spring][:memorial_day] << "Grill"
  holiday_hash[:spring][:memorial_day] << "Table Cloth"
  
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season][holiday_name] = supply_array
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
  
  holiday_hash.each do |season, holiday|
    
    cap_array =[]
    season_array = season.to_s.split
    season_array.collect do |word|
      cap_array << word.capitalize
    end #Cap Seasons
    season_str = cap_array.join(" ")
    puts season_str + ":"
      holiday.each do |day, supply|
        holiday_output =""
        cap_array =[]
        holiday_array = day.to_s.split("_")
        holiday_array.collect do |word|
          cap_array << word.capitalize
        end #Cap Holidays 
        holiday_str = cap_array.join(" ")
        #puts holiday_str + ":"
        holiday_output << "  " + holiday_str + ":"
        supply.each_with_index do |item, idx|
          idx == supply.length - 1 ? holiday_output << " " + item : holiday_output << " " + item + ","
        end # supply loop
        puts holiday_output
    end #holiday loop
  end #season loop 
end


def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
output_array =[]
  holiday_hash.each do |season, holiday|
    holiday.each do |day, supply| #loop through holidays
      #grab holiday name as a symbol placed in an array if it has BBQ
      supply.each do |item|
        item == "BBQ" ? output_array << day : day
      end
    end
  end
output_array
end







