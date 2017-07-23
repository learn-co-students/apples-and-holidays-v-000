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
  second_supply = String.new
  holiday_hash.each do |season, season_details_hash|
    season_details_hash.each do |holiday, holiday_supplies|
      if holiday == :fourth_of_july
        second_supply << holiday_supplies[1]
      end
    end
  end
  second_supply
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash.each do |season, season_details_hash|
    if season == :winter
      season_details_hash.each do |holiday, holiday_supplies|
        holiday_supplies.push(supply)
      end
    end
  end
end

def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  add_item = String.new
  new_item = String.new
  holiday_hash.each do |season, season_details_hash|
    season_details_hash.each do |holiday, holiday_supplies|
      if holiday == :memorial_day
        holiday_supplies.push(supply)
      end
    end
  end
end


def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  holiday_hash[season][holiday_name] = {}
  holiday_hash[season][holiday_name] = supply_array
  # remember to return the updated hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  winter_supplies = Array.new
  holiday_hash.each do |season, season_details_hash|
    if season == :winter
      season_details_hash.each do |holiday, holiday_supplies|
        holiday_supplies.each do |item|
          winter_supplies.push(item)
        end
      end
    end
  end
  winter_supplies
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, season_details_hash|
    season_name = season.to_s
    season_name.capitalize!
    puts "#{season_name}:"
    season_details_hash.each do |holiday, holiday_supplies|
      holiday_cap_array = []
      holiday_name = holiday.to_s
      holiday_name.gsub!(/[_]/," ")
      holiday_name.capitalize!
      holiday_name = holiday_name.split(" ")
      holiday_name.collect do |word|
        word.capitalize!
        holiday_cap_array.push(word)
      end
      holiday_cap_array = holiday_cap_array.join(" ")
      puts "  #{holiday_cap_array}: #{holiday_supplies.join(", ")}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"

end
