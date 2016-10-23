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
  holiday_supplies[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_supplies, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_supplies.each do |season, holiday|
    if season == :winter
      holiday_supplies[:winter][:christmas][2] = "#{supply}"
      holiday_supplies[:winter][:new_years][1] = "#{supply}"
    end
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash.each do |season, holiday|
    if season == :spring
      holiday_supplies[:spring][:memorial_day][1] = "#{supply}"
    end
  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash.each do |season_value, holiday|
    if season_value == season
      holiday_hash[:"#{season}"][:"#{holiday_name}"] = supply_array
    end
  end
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  holiday_hash.each do |season, holiday|
    if season == :winter
      return holiday.values.flatten
    end
  end
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season_key, holiday_value|
    puts "#{season_key.to_s.tr("_"," ").capitalize}:"
    holiday_value.each do |holiday_key,holiday_value|
      holiday_value_new = holiday_value.join(", ")
      puts "  #{holiday_key.to_s.tr("_"," ").split.map(&:capitalize).join(" ")}: #{holiday_value_new}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  new_array = []
  holiday_hash.each do |season_key, holiday_value|
    holiday_value.each do |holiday_key, holiday_supplies|
      if holiday_supplies.include?("BBQ")
        new_array << holiday_key
      end
    end
  end
  return new_array
end
