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
  count = 0 
  word = ""
  holiday_hash.each do |season, holiday_info|
    count += 1 
    if count == 2 
      holiday_info.each do |holiday, supplies|
        word = supplies[1]
      end 
    end 
    
  end 
  word 
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  count = 0 
  holiday_hash.each do |season, holiday_info|
    count += 1 
    if count == 1 
      holiday_info.each do |holiday, supplies|
        supplies << supply 
      end 
    end 
  end 

end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  count = 0 
  holiday_hash.each do |season, holiday_info|
    count += 1 
    if count == 4 
      holiday_info.each do |holiday, supplies|
        supplies << supply 
      end 
    end 
  end 
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season][holiday_name] = supply_array 
  holiday_hash 

end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  count = 0 
  word = []
  holiday_hash.each do |season, holiday_info|
    count += 1 
    if count == 1 
      holiday_info.each do |holiday, supplies|
        supplies.each do |i|
          word << i 
        end 
      end 
    end 
  end 
  word 
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  count = 0 
  holiday_hash.each do |season, holiday_info|
    new_season = season.to_s 
    
    #new_season = season.tr(':', '')
    #new_season = "#{new_season}:"
    #new_season = new_season.capitalize 
    puts "#{new_season.capitalize}:" 
    holiday_info.each do |holiday, supplies|
      new_holiday = holiday.to_s
      
      #new_holiday = new_holiday.capitalize
      new_holiday = new_holiday.split(/_/)
      
      new_holiday = new_holiday.map {|w| w.capitalize }.join(' ')
      new_holiday =  "  #{new_holiday}: "
      supplies.each do |i|
        new_i = i.to_s
        
        
        new_i = new_i.split(' ').map {|w| w.capitalize }.join(' ')
        if new_i == "Bbq"
          new_i = new_i.upcase
        end 
         count += 1 
         if count == 1 
           new_i = new_i 
           count += 1
         elsif count == 3
           new_i =  ", #{new_i}"
         end 
        new_holiday = "#{new_holiday}#{new_i}"
         
      end 
      count = 0 
      puts new_holiday
    end 
  end

end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  value = false 
  new_return = []
   holiday_hash.each do |season, holiday_info|
     
    holiday_info.each do |holiday, supplies|
      value = false
      
      supplies.each do |i|
        if i == "BBQ" || i == "Bbq"
          value = true 
        end 
      end 
      
      if value == true 
        new_return << holiday
      end 
    end 
  end
  new_return
end







