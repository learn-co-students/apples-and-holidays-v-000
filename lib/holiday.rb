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
  holiday_hash.each do |month, holiday_hash|
    holiday_hash.each do |holiday, requirements|
      if holiday == :fourth_of_july
        return requirements[1]
      end
    end
  end
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash.each do |month, holiday_hash|
    holiday_hash.each do |holiday, requirements|
      if holiday == :christmas || holiday == :new_years
        requirements << supply
      end
    end
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash.each do |month, holiday_hash|
    holiday_hash.each do |holiday, requirements|
      if holiday == :memorial_day
        requirements << supply
      end
    end
  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  winter_season_supplies = []
  holiday_hash.each do |season, holiday_name_hash|
    if season == :winter
      holiday_name_hash.each do |name, supplies|
        winter_season_supplies.concat(supplies)
      end
    end
  end
  winter_season_supplies
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
      holiday_string = holiday.to_s
      if holiday_string.index("_") != nil
        holiday_array = holiday_string.split("_")
        holiday_array_w_cap = holiday_array.collect {|ele| ele.capitalize}
        holiday_string = holiday_array_w_cap.join(" ")
        puts "  #{holiday_string}: #{supplies.join(", ")}"
      else
        puts "  #{holiday_string.capitalize}: #{supplies.join(", ")}"
      end
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  answer_aray = []
  holiday_hash.each {|season, holiday_info|
    holiday_info.each { |holiday, details|
      if details.include?("BBQ")
        answer_aray << holiday
      end
    }
  }
  answer_aray
end
