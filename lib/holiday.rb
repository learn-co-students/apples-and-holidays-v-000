require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter].each do |holiday, supplies|
    supplies << supply
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
  holiday_hash[:winter].collect do |holiday, supplies|
    supplies
  end.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holiday|
    season_string = season.to_s.capitalize! + ":"
      puts season_string
      holiday.each do |holiday, supplies|
        holiday_string = holiday.to_s
          holiday_array = holiday_string.split("_")
            capital_holiday = holiday_array.map {|holiday| holiday.capitalize!}
              capital_holiday_string = capital_holiday.join(" ") + ": "
                supplies_string = supplies.join(", ")
        puts "  " + capital_holiday_string + supplies_string
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  bbq_holidays = []
  holiday_hash.each do |season, holiday_with_supplies_hash|
    holiday_with_supplies_hash.each do |holiday, supplies| 
      if supplies.include?("BBQ")
        bbq_holidays << holiday
      end
    end
  end
  bbq_holidays
end







