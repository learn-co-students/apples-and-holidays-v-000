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

  puts "#{season.to_s.capitalize!}:"

    holiday.each do |holiday_name, supply|

          name = holiday_name.to_s.split("_").collect do |x|
            x.capitalize!
          end.join(" ")

          puts "  #{name}: #{supply.join(", ")}"

    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  bbq_holidays = []
    holiday_hash.each do |season, holiday|

      holiday.each do |holidays, supplies|
        if supplies.include?("BBQ")
          bbq_holidays << holidays

      end
    end
  end
  bbq_holidays
end
