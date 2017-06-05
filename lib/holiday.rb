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

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash.each do |season, data|
      data.each do |holiday, value|
        if holiday == :christmas or holiday == :new_years
          value << supply
      end
    end
  end
  return holiday_hash
end

def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash.each do |season, data|
    if season == :spring
      data.each do |holiday, value|
        value << supply
      end
    end
  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array

end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  supply_array = []
  holiday_hash.each do |season, data|
    if season == :winter
      data.each do |holiday, values|
        supply_array << values
      end
    end
  end
  return supply_array.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, data|
    season = season.to_s.capitalize!
    puts "#{season}:"
    data.each do |holiday, value|
      holiday = holiday.to_s
      if holiday.include?("_")
        holiday = holiday.gsub("_", " ").split
        holiday_array = holiday.map do |words|
          words.capitalize!
        end
        holiday = holiday_array.join(" ")
      else
        holiday = holiday.capitalize!
      end
      value = value.join(", ")
      puts "  #{holiday}: #{value}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  bbq_array = []
  holiday_hash.each do |season, data|
    data.each do |attribute, value|
      if value.include?("BBQ")
        bbq_array << attribute
      end
    end
  end
  bbq_array
end
