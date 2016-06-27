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
  holiday_hash.each do |season, special_days|
    puts "#{season}: #{special_days}"
    
    special_days.each do |holidays, supplies| 
        if holidays == :christmas
          supplies << supply
        end
        if holidays == :new_years
          supplies << supply
        end  
      end
    end
  end
  # holiday_hash is identical to the one above 
  # add the second argument, which is a supply, to BOTH the 
  # Christmas AND the New Year's arrays
  

 

def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash.each do |season, special_days|
    puts "#{season}: #{special_days}"

    special_days.each do |holidays, supplies|
      if holidays == :memorial_day
        supplies << supply
       end
    end    
  end
end    

 
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  


def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
   holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end   


  # code here
  # remember to return the updated hash

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  holiday_hash[:winter].values.flatten 
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holidays|
    puts "#{season.capitalize}:"
    holidays.each do |special_days, stuff|
      puts"  #{special_days.to_s.split('_').collect {|w| w.capitalize }.join(' ') }: #{stuff.join(", ")}"
    end  
  end
end      
   

  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.


# def all_holidays_with_bbq(holiday_hash)
  # holiday_hash.each do |holidays, decorations|
    # decorations.inject([]) do |holiday, supply|
      # if supply.flatten.include?("BBQ")
        # holiday << supply.flatten[0]
        # holiday
      # end  
    # end
  # end
# end    
         

def all_holidays_with_bbq(holiday_hash)
  holiday_hash.inject([]) do |arr, hash|
    hash[1].each do |holiday, supply|
      arr << holiday if supply.include?("BBQ")    
    end
    arr
  end
end









  #holiday_hash.collect do |season, holidays|
   # holidays.collect do |holiday, decorations|
    #  if decorations.include?("BBQ")
     # holiday
      #end
    #end
  #end.flatten.compact
#end    
    










  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
