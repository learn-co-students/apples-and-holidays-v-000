require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
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
  holiday_hash.each do |season, holidays|
    if season == :winter
      holidays.each do |holiday, supply|
        supply << "Balloons"
      end
    end
  end  
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day] << "#{supply}"
end

def add_new_holiday_with_supplies(hs, season, holiday_name, supply_array)
  # remember to return the updated hash
  hs[season][holiday_name]=supply_array
end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].collect do |holiday, supplies|
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
  
  holiday_hash.each do |season, holiday| 
    # binding.pry
    puts "#{season.capitalize}:"
    
    holiday.each do |holiday, supplies|
      cap_holiday = holiday.to_s.split('_').map do |word|
        word.capitalize
      end.join(" ")
      #binding.pry
      puts "  #{cap_holiday}: #{supplies.join(", ")}"
    end 
  end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  
  holiday_hash.collect do |season, holiday|
    x=holiday.collect do |key, supplies|
      if supplies.include?("BBQ")
        key
      end
    end
    #binding.pry
  end.flatten.compact
  
end







