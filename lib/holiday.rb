require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def helper(target, hash)
  hash.each {|key, value| return hash[key] if key == target}
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  helper(:winter, holiday_hash).values.each {|array| array << supply}
end


def add_supply_to_memorial_day(holiday_hash, supply)
  helper(:spring, holiday_hash).values.each {|array| array << supply}
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  helper(season, holiday_hash)[holiday_name.to_sym] = supply_array
  holiday_hash

end

def all_winter_holiday_supplies(holiday_hash)
  helper(:winter, holiday_hash).values.flatten

end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season|
    puts season[0].to_s.capitalize() + ":"
    season[1].each do |holiday|
      hol_name = holiday[0].to_s
      hol_name.each_char do |i|
      hol_name[i] = " "  if i == "_"
      end
      hol_name = hol_name.split(" ").map {|cap| cap.capitalize}
      puts "  #{hol_name*" "}: #{holiday[1].join(", ")}"
    end
  end

end

def all_holidays_with_bbq(holiday_hash)
  holiday_list = []
  holiday_hash.keys.each do |season|
    helper(season, holiday_hash).map do |holiday_name, supply|
      holiday_list << holiday_name if supply.include?("BBQ")
    end
  end
    holiday_list
end
