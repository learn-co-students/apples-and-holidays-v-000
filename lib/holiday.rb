

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
   holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash.each do |season, holiday|
   holiday.each do |day, object|
      if day == :christmas || day == :new_years
        object << "Balloons"
      end
  end
 end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
    new_array = []
    holiday_hash[:winter].each do |holiday, supplies|
      new_array << supplies
    end
  new_array.join(", ")
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holiday_name|
      puts "#{season.capitalize}:"
       holiday_name.each do |holiday, supplies|
       puts "  #{holiday.to_s.split("_").collect {|split_holiday_name| split_holiday_name.capitalize}.join(" ")}: #{supplies.join(", ")}"

end
end
end

def all_holidays_with_bbq(holiday_hash)
  new_array = []
    holiday_hash.map do |season, holidays|
      holidays.map do |holiday_name, supplies|
        if supplies.include?("BBQ")
          new_array << holiday_name
          else
          nil
          end
      end
    end
    new_array
end
