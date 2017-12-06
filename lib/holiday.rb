require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  puts "
  Winter:
    Christmas: Lights, Wreath
    New Years: Party Hats
  Summer:
    Fourth Of July: Fireworks, BBQ
  Fall:
    Thanksgiving: Turkey
  Spring:
    Memorial Day: BBQ
  "
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash.each do |season, holidays|
    holidays.each do |holiday, supplies|
      if holiday == :memorial_day
      supplies.push(supply)
      end
    end
  end
  holiday_hash
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season] = {holiday_name=>supply_array}
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.map do |season, holiday|
    holiday = holiday.to_s
    season = season.to_s
    season = season.capitalize!
    if holiday.include?("_")
      holiday = holiday.split("_")
      holiday.each {|word| word.capitalize!}
      holiday = holiday.join(" ")
    else
      holiday.capitalize!
    end
  end

end

def all_holidays_with_bbq(holiday_hash)

end
