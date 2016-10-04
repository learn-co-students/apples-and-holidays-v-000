require 'pry'

def second_supply_for_fourth_of_july(holiday_supplies)
  holiday_supplies[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_supplies[:winter].each do |season, supply|
    supply << "Balloons"
  end
end

def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_supplies[:spring][:memorial_day] << "Grill"
  holiday_supplies[:spring][:memorial_day] << "Table Cloth"
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)

  holiday_supplies[:fall][:columbus_day] = ["Flags", "Parade Floats", "Italian Food"]

  holiday_supplies[:winter][:valentines_day] = ["Cupid Cut-Out", "Candy Hearts"]

  holiday_supplies
end

def all_winter_holiday_supplies(holiday_supplies)
  return holiday_supplies[:winter].values.flatten
end

def all_holidays_with_bbq(holiday_supplies)
  new_array = []
  holiday_supplies.each do |season, value|
    value.each do |holiday, items|
      items.each do |item|
        if item == "BBQ"
          new_array << value.keys
        end
      end
    end
  end
  return new_array.flatten
end

def all_supplies_in_holidays(holiday_supplies)
  holiday_supplies.each do |season, holidays|
    puts "#{season.to_s.capitalize}:"
    holidays.each do |holiday, items|
      puts "  #{holiday.to_s.split("_").collect {|word| word.capitalize}.join(" ")}: #{items.join(", ")}"
    end
  end
end
