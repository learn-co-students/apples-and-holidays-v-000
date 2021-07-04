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
  holiday_hash[:winter].each do |holiday, list|
    list.push(supply)
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day].push(supply)
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season][holiday_name] = supply_array

end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  supplies_list = []
  holiday_hash.each do |season, holiday|
    if season == :winter
      holiday.each do |day, supplies|
        supplies_list.push(supplies)
      end
    end
  end
  supplies_list.flatten
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
    puts "#{season.to_s.capitalize}:"
    holidays.each do |holiday, list|
      if holiday.to_s.include? "_" # is holiday multiple words?
        holiday_placeholer = holiday.to_s.split("_") #make it a sting and split to array
        holiday_placeholer.each do |e| #capitalize each word
          e.capitalize!
        end
        holiday_formatted = holiday_placeholer.join(" ") #turn array back to word
      else
        holiday_formatted = holiday.to_s.capitalize #capitalize if it's only one word
      end
      this_line = "  #{holiday_formatted}: " #build string
      list.each_with_index do |item, index| #add each item to the line
        if index == list.length - 1
          this_line += "#{item.to_s}"
        else
          this_line += "#{item.to_s}, "
        end
      end
      puts this_line
    end
  end

end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  bbq_holidays_array = []
  holiday_hash.each do |season, holidays|
    holidays.each do |holiday, items|
      if items.include? 'BBQ'
        bbq_holidays_array.push(holiday)
      end
      #binding.pry
    end
  end
  bbq_holidays_array
end
