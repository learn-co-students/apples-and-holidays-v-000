require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter].each do |holiday, supplies|
    supplies << supply
  end
end

def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply
  holiday_hash
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  christmas_supplies = holiday_hash[:winter][:christmas]
	new_years_supplies = holiday_hash[:winter][:new_years]
	all_winter_supplies = christmas_supplies + new_years_supplies
	all_winter_supplies
end

def all_supplies_in_holidays(holiday_hash)
	holiday_hash.each do |season, data|
    if season == :winter
    	puts "#{season.capitalize}:"
    	data.each do |holiday, supplies|
    		puts "  #{holiday.to_s.split("_").each{|x| x.capitalize!}.join(" ")}: #{supplies.join(", ")}"
    	end
    elsif season != :winter
		  data.each do |holiday, supplies|
			  puts "#{season.capitalize}:"
			  puts "  #{holiday.to_s.split("_").each{|x| x.capitalize!}.join(" ")}: #{supplies.join(", ")}"
		  end
	  end
  end
end

def all_holidays_with_bbq(holiday_hash)
  blue = holiday_hash.map do |season, holiday_data|
  	holiday_data.map do |holiday, supplies|
  		if supplies.include? "BBQ"
  			holiday
  		end
  	end
  end
  blue.flatten.compact
end
