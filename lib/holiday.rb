require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
    holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash[:winter].each do |day, items|
  #  items << supply

  holiday_hash.each do |season, holiday|
      holiday.each do |day, items|
        if day == :christmas || day == :new_years
        items.push(supply)
      end
    end
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # holiday_hash[:spring][:memorial_day] << supply

    holiday_hash.each do |season, holiday|
      holiday.each do |day, items|
        if day == :memorial_day
        items.push(supply)
      end
    end
  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
    holiday_hash[season][holiday_name] = supply_array
end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holiday|
    puts "#{season.to_s.capitalize}:"
      holiday.each do |day, items|
      new_word = day.to_s
      new_word = new_word.split("_")
      new_word = new_word.collect {|cap| cap.capitalize}.join(" ")
      puts "  #{new_word}: #{holiday_hash[season][day].join(", ")}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  holiday_name = []

  holiday_hash.each do |season, holiday|
    holiday.each do |day, item|
      if holiday[day].include?("BBQ") == true
      holiday_name = holiday_name << day.to_sym
      end
    end
  end
  holiday_name
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
end
