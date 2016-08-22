require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]

end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter][:christmas] << "Balloons"
  holiday_hash[:winter][:new_years] << "Balloons"
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << "Grill"
  holiday_hash[:spring][:memorial_day] << "Table Cloth"
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[:fall][:columbus_day] = "Flags", "Italian Food", "Parade Floats"
  holiday_hash[:winter][:valentines_day] = "Candy Hearts", "Cupid Cut-Out"
end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten

end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holiday|

    holiday.each do |holidays, supplies|
      puts "#{season.capitalize!}:
      #{holidays.capitalize!}: #{supplies.capitalize!}"
      binding.pry
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  holiday_hash.each do |season, holiday|

    holiday.each do |holiday, supplies|
      if supplies == "BBQ"
        puts "#{holiday.keys}"

      end
    end
  end
end
