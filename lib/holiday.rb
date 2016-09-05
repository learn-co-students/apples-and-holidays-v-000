require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter].keys.map! do |holiday|
    holiday_hash[:winter][holiday].push(supply)
  end
end
 
def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
  h_str = ""
  h_pr = ""
  s = ""
  i = []
  holiday = {}
  holiday_hash.each do |season,hol_array| 
    s = season.to_s
    s.capitalize!
    holiday = hol_array
    puts "#{s}:"
    holiday.each do |attribute, value|
      h_str = attribute.to_s  #----turn attribute to string
        h_ary = h_str.split("_")     #----.split the string to array
          h_ary.each do |z| z.capitalize! end  #----iterate over ary & capitalize
            h_pr = h_ary.join(" ") #----.join the ary back into a string
              i = value.join(", ")
        puts "  #{h_pr}: "+"#{i}"
     end
  end
end

def all_holidays_with_bbq(holiday_hash)
  bbq_array = []
  holiday_hash.each do |season, holidays|
    holidays.each do |name, values|
      if holidays[name].include?("BBQ"); 
        bbq_array << name
          end
        end
      end
    bbq_array 
  end