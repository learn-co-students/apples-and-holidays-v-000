def second_supply_for_fourth_of_july(holiday_supplies)
  holiday_supplies[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_supplies, item)
  holiday_supplies[:winter][:christmas] << item
  holiday_supplies[:winter][:new_years] << item
end

def add_supply_to_memorial_day(holiday_supplies,item)
  holiday_supplies[:spring][:memorial_day] << item
end

def add_new_holiday_with_supplies(holiday_supplies,season, holidays,items)
  holiday_supplies[season][holidays] = items
end

def all_winter_holiday_supplies(holiday_supplies)
  winter_supplies =[]
  holiday_supplies[:winter].each_key do |holiday|
    winter_supplies.concat(holiday_supplies[:winter][holiday])
  end
  winter_supplies
end

def all_supplies_in_holidays(holiday_supplies)
  holiday_supplies.each do |seasons, holidays|
    puts "#{seasons.capitalize}:"
      holidays.each do |holiday, items|
        holiday_words_arr = []
        holiday.to_s.split("_").each do |word|
          holiday_words_arr << word.capitalize
        end
        holiday_words = holiday_words_arr.join (" ")
        puts "  #{holiday_words}: #{items.join(", ")}"
      end
    end
end

def all_holidays_with_bbq(holiday_supplies)
  holidays_arr = []
  holiday_supplies.each do |season, holidays|
    holidays.each do |holiday, supplies|
      holidays_arr << holiday if supplies.include?("BBQ")
    end
  end
  holidays_arr
end
