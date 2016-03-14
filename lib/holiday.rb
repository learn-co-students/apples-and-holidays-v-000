def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july].last
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash.each do |season, holidays|
    if season == :winter
      holidays[:christmas] << supply
      holidays[:new_years] << supply
    end
  end
end

def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash.each do |season, holidays|
    if season == :spring
      holidays[:memorial_day] << supply
    end
  end

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  winter_supplies = []
  holiday_hash.each do |season, holidays|
    if season == :winter
      holidays.each do |holiday, attributes|
        winter_supplies << attributes.join(", ")
      end
    end
  end
  winter_supplies.join
end


def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holidays|
    puts "#{season.capitalize.to_s}:"
    holidays.each do |holiday, attributes|
      holiday_str = holiday.to_s.split("_").map(&:capitalize).join(" ")
      puts "  #{holiday_str}: #{attributes.join(", ")}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  bbq = []
  holiday_hash.each do |season, holidays|
    holidays.each do |holiday, attributes|
      if attributes.include?("BBQ")
        bbq << holiday
      end
    end
  end
  bbq
end
