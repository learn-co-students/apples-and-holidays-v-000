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
    holiday_hash[:winter].each_value {|supplies| supplies.push(supply)}


    # holiday_hash is identical to the one above 
  # add the second argument, which is a supply, to BOTH the 
  # Christmas AND the New Year's arrays
  
end
 

def add_supply_to_memorial_day(holiday_hash, supply)
   holiday_hash[:spring][:memorial_day].push(supply)
# again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  # code here
  # remember to return the updated hash
  
end

def all_winter_holiday_supplies(holiday_hash)
  all = holiday_hash[:winter].collect {|holiday,supplies| supplies} 
  all.flatten
  
  # return an array of all of the supplies that are used in the winter season
  
end


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

def all_supplies_in_holidays(holiday_hash)
    
  holiday_hash.each do |season,holidays| 
    puts "#{season.to_s.capitalize!}:"
    holidays.each do |event, stuff| 
      christmas = event.to_s.split("_").collect {|item| item.capitalize!} 

      puts "  #{christmas.join(" ")}: " + "#{stuff.join(", ")}" 
        
    end
       
  end
    
end
  

def all_holidays_with_bbq(holiday_hash)
  ending_array = []
  holiday_hash.each_value do |holidays_with_supply_values|
    holidays_with_supply_values.each do|holidays,supplies| 
      supplies.each do|supply| 
        if supply == "BBQ" 
          ending_array.push(holidays)
        end
      end
    end
  end


    # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  return ending_array
end







