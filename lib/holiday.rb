require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
   holiday_hash[:winter].each{|holiday, supplies| supplies << supply}
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season].store(holiday_name, supply_array)
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
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
  holiday_hash.each {|season, holiday|
    puts "#{season.to_s.capitalize!}:"
    holiday.each {|holiday, supplies|
        puts "  #{holiday.to_s.split("_").each {|word| word.capitalize!}.join(" ")}: #{supplies.join(", ")}"
    }
  }

end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"

 #plan: make empty array for bbq holidays, iterate over holiday_hash and shovel correct holidays in
  holidays_with_bbq_array = []
  holiday_hash.each {|season, holiday|
    holiday.each {|holiday, supplies|
    if supplies.include?("BBQ")
      holidays_with_bbq_array << holiday
    end
    }
  }
  holidays_with_bbq_array
end
