require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
  
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  
  holiday_hash[:winter][:new_years] << "Balloons"
  holiday_hash[:winter][:christmas] << "Balloons"
  
 end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply
  
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  
   season_sym = season.to_sym
  holiday_name_sym = holiday_name.to_sym
  
  holiday_hash.each do |season_hash|
  holiday_hash[season_sym][holiday_name_sym] = supply_array
   
  
  holiday_hash

end

def all_winter_holiday_supplies(holiday_hash)
  
  holiday_hash[:winter].values.flatten
       

end

def all_supplies_in_holidays(holiday_hash)
  
holiday_hash.each do |season, holiday|
 puts "#{season.capitalize}:"
  holiday.each do |holiday, supplies|
  
   
   puts "  #{holiday.to_s.split("_").map{|x| x.capitalize}.join(" ")}: #{supplies.join(", ")}"
   
 end
end
end

def all_holidays_with_bbq(holiday_hash)
  holiday1 = []

 	 
  holiday_hash.each do |season, holiday|
    holiday.each do |holiday, items|     
      if items.include?("BBQ")
        holiday1 << holiday
      end
    end
  end
   holiday1
end
end
