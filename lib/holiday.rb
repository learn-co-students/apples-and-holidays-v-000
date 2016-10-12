require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter][:christmas] = supply
  holiday_hash[:winter][:new_years] = supply
  
end
 

def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] = supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season] = {holiday_name => supply_array}
  holiday_hash   
end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.to_s
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, data|
    puts "#{season.to_s.capitalize!}:"
      data.each do |holiday, supply|
      stringed = holiday.to_s
      remove_underscore = stringed.gsub("_", " ")
      capitalized = remove_underscore.split.each {|i| i.capitalize!}.join(" ")
      holiday = capitalized
      puts "  #{holiday}: #{supply.join(", ")}"
     end
   end
  end

def all_holidays_with_bbq(holiday_hash)
  selected_holiday = []
    holiday_hash.each do |season, data|
      data.each do |holiday, supply|
       supply.each do |item|
        if item == "BBQ"
           selected_holiday << holiday
         end
       end
     end
   end
   selected_holiday
  end     








