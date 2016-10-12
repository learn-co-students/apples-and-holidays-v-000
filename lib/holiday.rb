require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter][:christmas] << supply
  holiday_hash[:winter][:new_years] << supply
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten

end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |key, value|
    aa = key.to_s.split("_")
    ee = aa.each {|e| e.capitalize!}
    ii = ee.join(" ")
    puts "#{ii}:"
    holiday_hash[key].each do |date, supplies|
      oo = date.to_s.split("_")
      uu = oo.each {|e| e.capitalize!}
      yy = uu.join(" ")
      zz = supplies.join(", ")
      puts "  #{yy}: #{zz}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  array = []
  holiday_hash.each do |season, value|
    value.each do |holiday, supplies|
      supplies.each do |e|
        if e == "BBQ"
        array << holiday
        end
      end
    end
  end
  return array
end
