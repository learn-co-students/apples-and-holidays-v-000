require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
holiday_hash.each do |season, holidays|
  if season == :winter
  holidays.each do |attribute, value|
    value << supply
  end
end
end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
holiday_hash[season]= {holiday_name => supply_array}
holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
 holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holiday|
      puts "#{season.capitalize}:"
       holiday.each do |holidays, supplies|
         puts "  #{holidays.to_s.split("_").collect {|holiday| holiday.capitalize}.join(" ")}: #{supplies.join(", ")}"
       end
     end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  bbq = []
  holiday_hash.each do |season, holiday|
    holiday.each do |attribute, supplies|
     if supplies.include?("BBQ")
 bbq << attribute
 end
 end
 end
 return bbq
end
