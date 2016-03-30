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
  supplies<<supply

end

  
end
 

def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day]<<supply
  
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season][holiday_name]=supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  
  supply_array=[]
  holiday_hash[:winter].each do |holiday, supplies|
    supplies.each do |supply|
      supply_array<<supply
    end
  end
  supply_array
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  
  season_string=""
  
  holiday_hash.each do |season, holidays|
    season_string = "#{season.to_s.capitalize}:" 
            
            puts season_string
    
    holidays.each do |holiday, supply_array|
      holiday_string = holiday.to_s
      arr=holiday_string.split('_')
        
      cap_array=arr.collect do |holiday_word|
         holiday_word = holiday_word.capitalize
      end
    
      holiday_string = cap_array.join(" ")
    
     sup= supply_array.join(", ")
           holiday_string <<": "
           puts "  #{holiday_string << sup}"
          end
    end

end
           
            
        
      
        
          
         
     
 

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
   season_array=[]
   holiday_hash.each do |season, holiday|
      
      holiday.each do |holiday, supply|
        if supply.include?("BBQ")
          season_array << holiday
         end
      end
   end
  season_array

end

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

  all_supplies_in_holidays(holiday_hash)



