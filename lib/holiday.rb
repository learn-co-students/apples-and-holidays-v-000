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
  
  holiday_supplies[:summer][:fourth_of_july][1]
  
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  
  holiday_hash.each do |season_hash, holiday|
    if season_hash == :winter 
        holiday_hash[:winter][:christmas] << supply
        holiday_hash[:winter][:new_years] << supply
      end
    end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  
  holiday_hash.each do |season_hash, holiday|
    if season_hash == :spring 
        holiday_hash[season_hash][:memorial_day] << supply
      end
    end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  holiday_hash[season][holiday_name] = supply_array
  
  # remember to return the updated hash
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  holiday_hash.each do |season_hash, holiday|
    if season_hash == :winter 
        return holiday_hash[season_hash].values.flatten 
      end
    end
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  
  i = 0
 
  holiday_hash.each do |season, holiday_name_hash|
    season_array = season.to_s.split 
      while i < season_array.length  
       season_array[i].capitalize!
        i+=1  
      end
    season = season_array.join(" ") 
    i=0 
    
    puts "#{season}:"
    
    holiday_name_hash.each do |holiday_name, supply_array|
      
      holiday_name_array = holiday_name.to_s.split("_") 
      while i < holiday_name_array.length  
       holiday_name_array[i].capitalize!
        i+=1  
      end
      holiday_name = holiday_name_array.join(" ") 
      i=0 
      
      supply_array.each do |supply| 
        supply_list_array = supply.to_s.split(" ")
        while i < supply_list_array.length 
          supply_list_array[i].capitalize!
          i+=1 
        end
      supply = supply_list_array.join(" ")
      i = 0   
      end 
      
      puts "  #{holiday_name}: #{supply_array.join(", ")}"
          
    end
  end
end 

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists include the string "BBQ"

  bbq_holidays = []
  holiday_hash.each do |season, holidays_hash|
    holidays_hash.each do |holiday_name, supplies_array|
      if supplies_array.include?("BBQ")
        bbq_holidays << holiday_name
      end
    end
  end
    return bbq_holidays
end