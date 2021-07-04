require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]

end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter].each do |attribute, data|
    data << supply
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

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |key, value|
    puts "#{key.capitalize}:"
    value.each do |key1,value1|
          puts "  #{key1.to_s.split("_").collect{|holiday| holiday.capitalize}.join(" ")}: #{value1.join(", ")}"
end
end
end

def all_holidays_with_bbq(holiday_hash)
  array = []
  holiday_hash.collect do |season, value|
    value.collect do |holiday, supply|
      supply.collect do |item|
        if item == "BBQ"
          array << holiday
        end
      end
    end
  end
  array
end
