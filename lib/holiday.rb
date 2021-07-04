def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash.each do |season, season_holidays_hash|
    season_holidays_hash.each do |holiday, attributes|
      if holiday == :christmas || holiday == :new_years
        attributes << supply
      end
    end
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash.each do |season, season_holidays_hash|
    season_holidays_hash.each do |holiday, attributes|
      if holiday == :memorial_day
        attributes << supply
      end
    end
  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, season_holidays_hash|
    puts "#{season.to_s.capitalize}:"
    season_holidays_hash.each do |holiday, attributes|
      puts "  #{holiday.to_s.split("_").each {|word| word.capitalize!}.join(" ")}: #{attributes.join(", ")}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  holidays_with_bbqs = []
  holiday_hash.each do |season, season_holidays_hash|
    season_holidays_hash.each do |holiday, attributes|
      if attributes.include?("BBQ")
        holidays_with_bbqs << holiday
      end
    end
  end
  holidays_with_bbqs
end
