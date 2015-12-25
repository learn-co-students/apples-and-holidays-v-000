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

  holiday_hash.each do |season, holidays|
    if season == :summer
      holidays.each do |holiday, item|
        return item[1]
      end
    end
  end
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above 
  # add the second argument, which is a supply, to BOTH the 
  # Christmas AND the New Year's arrays

  holiday_hash.each do |season, holidays|
    if season == :winter
      holidays.each do |holiday, item|
        item << supply
      end        
    end
  end
  
end
 

def add_supply_to_memorial_day(holiday_hash, supply)

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
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash.each do |season, holidays|
    if season == :spring
      holidays.each do |holiday, item|
        item << supply
      end
    end
  end
  
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
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

  # code here
  holiday_hash.each do |seasons, holidays|
    if seasons == season
      holidays[holiday_name] = supply_array
    end
  end
  # remember to return the updated hash
  holiday_hash
  
end

def all_winter_holiday_supplies(holiday_hash)

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

  # return an array of all of the supplies that are used in the winter season
  winter_supply_list = Array.new

  holiday_hash.each do |seasons, holidays|
    if seasons == :winter
      holidays.each do |holiday, supplies|
        supplies. each do |supply|
          winter_supply_list << supply
        end
      end
    end
  end
  winter_supply_list
end

def all_supplies_in_holidays(holiday_hash)
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

  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.

  holiday_hash.each do |seasons, holidays|
    puts "#{seasons.to_s.capitalize}:"
    holidays.each do |holiday, supplies|
        if holiday.to_s.include?("_")
            holiday= holiday.to_s.gsub("_"," ").split(" ").each do |word| 
                word.capitalize!
            end
            holiday = holiday.join(" ")
            puts "  #{holiday}: #{supplies.join(", ")}"
        else
            puts "  #{holiday.to_s.capitalize}: #{supplies.join(", ")}"
        end
    end

  end
  
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
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

  holiday_array = Array.new

  holiday_hash.each do |season, holidays|
    holidays.each do |holiday,supplies|
      if supplies.include?("BBQ")
         holiday_array << holiday
      end
    end
  end
  holiday_array
end







