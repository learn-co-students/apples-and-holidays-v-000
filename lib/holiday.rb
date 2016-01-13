require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter].each_value {|v| v << supply}
end
 

def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring].each_value {|v| v << supply}
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  new_holiday = { season => { holiday_name => supply_array
    }
  }
 holiday_hash.merge!(new_holiday)
end

def all_winter_holiday_supplies(holiday_hash)
 holiday_hash[:winter].collect {|holiday, supplies| supplies}.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holidays|
    puts "#{season.to_s.capitalize!}:"
      holidays.each do |attribute, data|
        split_array = attribute.to_s.split("_")
        caps_array = split_array.each{|w| w.capitalize!}.join(" ")
        puts "  #{caps_array}: #{data.join(", ")}"
      end
  end
  
end

def all_holidays_with_bbq(holiday_hash)
  holiday_array = []
    holiday_hash.each do |season, holidays|
      holidays.each do |attribute, data|
        holiday_array << attribute if data.include?("BBQ")
      end
    end
   holiday_array
end