require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
  holiday_hash.each do |season, holiday|
    if season == :summer
      return holiday_hash[:summer][:fourth_of_july][1]
    end
  end
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash.each do |season, holiday|
    if season == :winter
      holiday_hash[:winter].each do |date, activity|
        activity << supply
      end
    end
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash.each do |season, holiday|
    if season == :spring
      holiday_hash[:spring].each do |date, activity|
        activity << supply
      end
    end
  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash.each do |quarter, holiday|
    if quarter == season
      holiday_hash[quarter][holiday_name] = supply_array
    end
  end
  return holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  holiday_hash.each do |season, day|
    if season == :winter
      return holiday_hash[:winter].values.flatten
    end
  end
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  holiday_hash.each do |season, holiday|
    puts "#{(season.to_s.capitalize!)}:"
    holiday_hash[season].each do |day, activity|
      if day.to_s.split('_').length > 1
        capital_day = day.to_s.split('_').map(&:capitalize).join(" ")
        puts "  #{capital_day}: #{activity.join(", ")}"
      else
         puts "  #{day.to_s.capitalize!}: #{activity.join(", ")}"
      end
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  new_array = Array.new
  holiday_hash.each do |season, holiday|
    holiday_hash[season].each do |day, activity|
      if activity.include?("BBQ")
        new_array << holiday_hash[season].keys.reduce
      end
    end
  end
  return new_array
end
