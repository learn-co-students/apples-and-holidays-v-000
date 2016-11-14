require 'pry'

def second_supply_for_fourth_of_july(holiday_supplies)
  holiday_supplies[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_supplies, supply)
  holiday_supplies[:winter].each do |holiday, supplies|
    supplies << supply
  end
end

def add_supply_to_memorial_day(holiday_supplies, supply)
  holiday_supplies[:spring][:memorial_day] = "Grill", "Table Cloth"
end

def add_new_holiday_with_supplies(holiday_supplies, supply, arg, hash)
  holiday_supplies[:fall][:columbus_day] = "Flags", "Italian Food", "Parade Floats"
  holiday_supplies[:winter][:valentines_day] = "Candy Hearts", "Cupid Cut-Out"
end

def all_winter_holiday_supplies(holiday_supplies)
  holiday_supplies[:winter].collect do |holiday, supplies|
    supplies
  end.flatten
end

def all_supplies_in_holidays(supplies_hash)
  holiday_supplies.each do |season, holidays|
    puts "#{season.capitalize}:"
    holidays.each do |holiday, supplies|
      puts"  #{holiday.to_s.split('_').map {|w| w.capitalize }.join(' ') }: #{supplies.join(", ")}"
    end
  end
end

def all_holidays_with_bbq(holiday_supplies)
  holiday_supplies.collect do |season, holiday|
    holiday.collect do |holidays, supplies|
      holidays if supplies.include?("BBQ")
    end
  end.flatten.compact
end
