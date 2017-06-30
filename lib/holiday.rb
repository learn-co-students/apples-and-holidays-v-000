require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter].each do |holiday, supplies|
    supplies<<supply
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring].each do |holiday, supplies|
    supplies<<supply
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
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  holiday_hash.each do |season, holidays|
    puts "#{season.capitalize}:"
      holidays.each do |holiday, supplies|
        hol = holiday.to_s.split("_").collect {|i| i.capitalize}
        hol = hol.join(" ")
        puts "  #{hol}: #{supplies.join(", ")}"
      end
  end
end

def all_holidays_with_bbq(holiday_hash)
  holidays_with_bbqs = []
  holiday_hash.collect do |season, holidays|
    holidays.collect do |holiday, supplies|
      if supplies.include?("BBQ")
        holidays_with_bbqs<<holiday
      end
    end
  end
  holidays_with_bbqs
end
