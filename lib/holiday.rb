require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter].values.each do |list|
    list << supply
  end

end

def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)

  holiday_hash[season] = {holiday_name => supply_array}
  holiday_hash

end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten
end



def s_to_s(symbol)
  output = symbol.to_s.split("_")
  output.each {|word| word[0] = word[0].upcase}
  output.join(" ")
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holiday|
    puts "#{s_to_s(season)}:"

    holiday.each do |name, supplies|
      puts "  #{s_to_s(name)}: #{supplies.join(", ")}"
    end
  end
end



def all_holidays_with_bbq(holiday_hash)
  holiday_hash.collect do |season, days|
    days.keys.select do |holiday|
      holiday_hash[season][holiday].include?("BBQ")
    end

  end.flatten.compact
  
end