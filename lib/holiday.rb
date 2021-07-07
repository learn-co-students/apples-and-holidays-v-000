require 'pry'

holiday_hash = {
  :winter => {
    :christmas => ["Lights", "Wreath"],
    :new_years => ["Party Hats"]
  },
  :summer => {
    :fourth_of_july => ["Fireworks", "BBQ"]
  },
  :fall => {
    :thanksgiving => ["Turkey"]
  },
  :spring => {
    :memorial_day => ["BBQ"]
  }
}

def second_supply_for_fourth_of_july(holiday_hash)
  # return the second element in the 4th of July array
  return holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash.each do |season, holiday|
    if season == :winter
      holiday.each do |name, value|
        value << supply
      end
    end
  end

end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash.each do |season, holiday|
      holiday.each do |name, value|
          if name == :memorial_day
        value << supply
      end
    end
  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  return holiday_hash

end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  winter_supplies = holiday_hash[:winter].values.flatten
  return winter_supplies
end

def all_supplies_in_holidays(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
holiday_names = []
  holiday_hash.each do |season, data|
    name = season.to_s.capitalize!
    puts "#{name}:"
    data.each do |holiday,value|
      holiday = holiday.to_s.split("_")
      holiday.collect {|word| word.capitalize!}
    puts "  #{holiday.join(" ")}: #{value.join(", ")}"

end
end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
holiday_names = []
  holiday_hash.each do |season, data|
    data.each do |name, values|
      if values.any? {|word| word == "BBQ"}
        holiday_names << name
      end
    end
  end
  return holiday_names
end
