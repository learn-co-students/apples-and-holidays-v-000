require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_supplies[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_supplies[:winter].each do |attribute,data|
    data << supply
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_supplies[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)

  holiday_hash[season][holiday_name] = supply_array

end

def all_winter_holiday_supplies(holiday_hash)
  holiday_supplies[:winter].values.flatten

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
  new_array= []
  holiday_hash.each do |season,value|
    value.each do |holiday, value1|
      if value1.include?("BBQ")
        new_array << holiday
      end
    end
  end
  new_array
end
