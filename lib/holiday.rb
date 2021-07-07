require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)

  holiday_hash[:summer][:fourth_of_july][1]
end



def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash.each {|s, holiday|
  holiday.each {|h, e| 
    if s == :winter
      e << supply
    end}}
end



def add_supply_to_memorial_day(holiday_hash, supply)
    holiday_hash.each {|s, holiday|
  holiday.each {|h, e| 
    if h == :memorial_day
      e << supply
    end}}
end



def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end



def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten
end



def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |sk, season_hash|
    season = sk.capitalize.to_s
    puts "#{season}:"
  season_hash.each {|hk, item_array|
    h = hk.to_s.split("_")
    h_array = []
    h.each {|h_word| h_array << h_word.capitalize}
    holiday = h_array.join(" ")
    items = item_array.join(", ")
    puts "  #{holiday}: #{items}"
    }
  end
end



def all_holidays_with_bbq(holiday_hash)
  new_array = []
  holiday_hash.collect {|sk, s_hash|
  s_hash.each {|hk, i_arr| new_array << hk if i_arr.include?("BBQ")}}
new_array
end







