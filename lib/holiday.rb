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
  holiday_hash[:winter][:christmas] << supply
  holiday_hash[:winter][:new_years] << supply
end
 

def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day] << supply
  
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
holiday_hash[season][holiday_name] = supply_array
holiday_hash  
end

def all_winter_holiday_supplies(holiday_hash)
holiday_hash.map do |season, holiday_data|
  if season == :winter
    holiday_data.map do |holiday, supplies|
    
    supplies

end
end
end.flatten
end

def all_supplies_in_holidays(holiday_hash)

holiday_hash.each do |season,data|
  if season == :winter
    puts "#{season.capitalize}:"
  data.each do |holiday,supplies|
   puts "  #{holiday.to_s.split("_").map(&:capitalize).join(" ")}: #{supplies.join(", ")}"
end
end
  if season == :spring
    puts "#{season.capitalize}:"
  data.each do |holiday,supplies|
   puts "  #{holiday.to_s.split("_").map(&:capitalize).join(" ")}: #{supplies.join(", ")}"
end
end
  if season == :summer
    puts "#{season.capitalize}:"
  data.each do |holiday,supplies|
   puts "  #{holiday.to_s.split("_").map(&:capitalize).join(" ")}: #{supplies.join(", ")}"   
end
end

  if season == :fall
    puts "#{season.capitalize}:"
  data.each do |holiday,supplies|
   puts "  #{holiday.to_s.split("_").map(&:capitalize).join(" ")}: #{supplies.join(", ")}"
end
end
end
end



def all_holidays_with_bbq(holiday_hash)
bbq_array = []
  holiday_hash.each do |season, holiday_data|
  holiday_data.each do |holiday, supplies|
  supplies.each do |x|
  if x == "BBQ"
    bbq_array << holiday
   end
   end
   end
   end
   bbq_array
   end 

