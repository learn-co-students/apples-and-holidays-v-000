require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash.each do |season, holiday|
    if season == :winter
      holiday.each do |name, list|
        list << "#{supply}"
      end
    end
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
holiday_hash.each do |season, holiday|
    holiday.each do |name, list|
      if name == :memorial_day
      list << "#{supply}"
      end
    end
  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].map do |name, supplies|
    supplies
  end.flatten
end
#how was i supposed to know you can .flatten an end after a do i swear to god yall are making me suicidal

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  holiday_hash.each do |season, holiday|
  puts "#{season.capitalize}:"
    holiday.each do |name, supplies|
      puts "  #{name.to_s.split("_").map {|word| word.capitalize}.join(" ") }: #{supplies.join(", ")}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  arr = []
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  holiday_hash.map do |season, holiday|
    holiday.map do |name, supplies|
      if supplies.include?("BBQ")
      arr << name
      end
    end
  end
  arr
end
