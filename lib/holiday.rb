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

def helper(target, hash)
  hash.each {|key, value| return hash[key] if key == target}
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  helper(:winter, holiday_hash).values.each {|array| array << supply}
  # holiday_hash[:winter].values.each {|array| array << supply} 

end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  helper(:spring, holiday_hash).values.each {|array| array << supply}
  # holiday_hash[:spring].values.each {|array| array << supply} 
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  helper(season, holiday_hash)[holiday_name.to_sym] = supply_array
  holiday_hash

end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  helper(:winter, holiday_hash).values.flatten

end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  holiday_hash.each do |season|
    
    puts season[0].to_s.capitalize() + ":"
    
    season[1].each do |holiday|
      
      hol_name = holiday[0].to_s   #turn array into string
      
      #replace any "_" with " "
      hol_name.each_char do |i|     
      hol_name[i] = " "  if i == "_" 
      end
      
      #split hol_name at the " " that used to be "_" and return a capitalized version of each word
      #join the arrays/words back together and puts in proper format
      hol_name = hol_name.split(" ").map {|cap| cap.capitalize}
      puts "  #{hol_name*" "}: #{holiday[1].join(", ")}"
    end
  end
  
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  
  # season_list = holiday_hash.keys
  holiday_list = []
  holiday_hash.keys.each do |season|
    # binding.pry
    helper(season, holiday_hash).map do |holiday_name, supply|
      # binding.pry
      holiday_list << holiday_name if supply.include?("BBQ")
    end
    # binding.pry
    # puts holiday_list
    # holiday_list
  end
    holiday_list
end
