require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end


def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter].each do |key, value|
    value << supply
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array

end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten
end

# iterate through holiday_hash and print items such that your readout resembles:
# Winter:
#   Christmas: Lights, Wreath
#   New Years: Party Hats
# Summer:
#   Fourth Of July: Fireworks, BBQ
# etc.
# .to_s
# .capitalize
# .split
# .join

def all_supplies_in_holidays(holiday_hash)
    holiday_hash.each do |key, value|
    puts "#{key.capitalize}:"
    value.each do |key, value|
    puts "  " + key.to_s.split("_").each {|i| i.capitalize!}.join(" ") +":" + " " + value.join(", ")
    end
  end
end


def all_holidays_with_bbq(holiday_hash)
  holiday_hash.map do |key, value|
    value.map do |key, value|
      key if value.include?("BBQ")
    end
  end.flatten.compact
end
