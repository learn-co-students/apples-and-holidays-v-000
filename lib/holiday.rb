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
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash.keys.each do | season |
    if season == :winter
      holiday_hash[season].each do | holiday, item |
        holiday_hash[season][holiday] << supply
      end
    end
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash.keys.each do | season |
    if season == :spring
      holiday_hash[season].each do | holiday, item |
        if holiday == :memorial_day
          holiday_hash[season][holiday] << supply
        end
      end
    end
  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  winter_supplies = []
  holiday_hash.keys.each do | season |
    if season == :winter
      holiday_hash[season].each do | holiday, item |
        item.each do | supply |
          winter_supplies << supply
        end
      end
    end
  end
  winter_supplies
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  holiday_hash.keys.each do | season |
    puts "#{season.to_s.capitalize}:"
    holiday_hash[season].keys.each do | holiday |
      holiday_words = holiday.to_s.split("_")
      holiday_words.each do | word |
          word.capitalize!
      end
      puts "  #{holiday_words.join(" ")}: #{holiday_hash[season][holiday].join(", ")}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  holidays_with_bbqs = []

  holiday_hash.keys.each do | season |
    holiday_hash[season].keys.each do | holiday |
      holiday_hash[season][holiday].each do | supply |
        if supply == "BBQ"
          if !holidays_with_bbqs.include?(holiday)
            holidays_with_bbqs << holiday
          end
        end
      end
    end
  end
  holidays_with_bbqs
end
