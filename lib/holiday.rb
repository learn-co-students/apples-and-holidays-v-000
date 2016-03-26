require 'pry'

# return the second element in the 4th of July array
def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash.each do |season, details|
    details.each do |holiday, supplies|
      if holiday == :fourth_of_july
        return supplies[1]
      end
    end
  end
end

# add the second argument, which is a supply, to BOTH the 
# Christmas AND the New Year's arrays
def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash.each do |season, details|
    if season == :winter
      details.each do |holiday, supply_list|
        supply_list << supply
      end
    end
  end
end
 
# add the second argument to the memorial day array
def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash.each do |season, details|
    details.each do |holiday, supply_list|
      if holiday == :memorial_day
        supply_list.push(supply)
      end
    end
  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
end

# return an array of all of the supplies that are used in the winter season
def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten
end

  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, details|
    puts "#{season.capitalize}:"
    details.each do |holiday, supply_list|
      puts "  #{holiday.to_s.split("_").collect {|x| x.capitalize}.join(" ")}: #{supply_list.join(", ")}"
    end
  end
end

# return an array of holiday names (as symbols) where supply lists include the string "BBQ"
def all_holidays_with_bbq(holiday_hash)
  my_bbq = []
  holiday_hash.each do |season, event|
    event.select do |holiday, items|
      if items.include?("BBQ")
        my_bbq.push(holiday)
      end
    end
  end
  my_bbq
end







