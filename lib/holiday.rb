require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_supplies[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_supplies[:winter][:christmas] << "Balloons"
  holiday_supplies[:winter][:new_years] << "Balloons"
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_supplies[:spring][:memorial_day] << supply
  holiday_supplies
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_supplies[season][holiday_name] = supply_array
  
  holiday_supplies

end

def all_winter_holiday_supplies(holiday_hash)
  array = []
 holiday_supplies[:winter].collect do |holiday, list|
   list.collect do |list_array|
    array << list_array
 end
end
array
end

def all_supplies_in_holidays(holiday_hash)
  holiday_supplies.each do |season, data|
    puts "#{season.to_s.capitalize}:"
    data.each do |holiday, list|
      holiday_string = holiday.to_s
      holiday_array = []
      if holiday_string.include?("_")
        holiday_split = holiday_string.split("_")
        holiday_split.each do |upper|
         holiday_array << upper.capitalize!
          end
      puts "  #{holiday_array.join(" ")}: #{list.join(", ")}"
      elsif holiday_string.include?("_") == false 
      puts "  #{holiday_string.capitalize}: #{list.join(", ")}"
  end
end
end
end

def all_holidays_with_bbq(holiday_hash)
  bbq = []
  holiday_supplies.collect do |seasons, data|
    data.collect do |holiday, list|
     if list.include?("BBQ")
      bbq << holiday
 end
end
end
bbq
end







