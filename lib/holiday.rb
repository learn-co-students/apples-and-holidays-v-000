require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  x=holiday_hash[:winter].collect do |item, val|
    val<<supply
  end
  x
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day]<<supply
  holiday_hash
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash.each do |key, val|
    if key == season
      holiday_hash[key][holiday_name]=supply_array
    end
  end
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
x=holiday_hash[:winter].collect {|item, val| val}
x.flatten
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  holiday_hash.collect do |season, val|
    puts "#{season.capitalize}:"
    val.collect do |holiday, supplies|
      temp = holiday.to_s.split("_")
      temp = temp.collect {|item| item.capitalize}
      temp = temp.join(" ")
      puts "  #{temp}: #{supplies.join(", ")}"
    end
  end

end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  sto = []
  holiday_hash.each do |season, val|
    val.each do |holiday, supplies|
      binding.pry
      if supplies.include?("BBQ")
        sto<<holiday
      end
    end
  end
  sto
end
