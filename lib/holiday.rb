require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # holiday_supplies = {
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
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above 
  # add the second argument, which is a supply, to BOTH the 
  # Christmas AND the New Year's arrays
  holiday_hash[:winter].each {|seasons, items| items << supply}
end
 

def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring].each {|seasons, items| items << supply}
  
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season][holiday_name] = supply_array
  
end

def all_winter_holiday_supplies(holiday_hash)
  winter_supplies = []
  holiday_hash[:winter].each do |holiday, items|
    items.each do |item|
    winter_supplies << item
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
  holiday_hash.each do |seasons, holidays|
    puts "#{seasons.capitalize}:"
    holidays.each do |holiday, items|
      new_string = ""
      i = 0
      new_string << "  #{holiday.to_s.gsub("_", " ").split.map(&:capitalize).join(' ')}: "
      items.each do |item|
        if i < items.length - 1
            new_string << "#{item.to_s.gsub("_", " ").split.map(&:capitalize).join(' ')}, "
        else
          if item != item.upcase
            new_string << "#{item.to_s.gsub("_", " ").split.map(&:capitalize).join(' ')}"
          else
            new_string << item
          end
        end
        i += 1
      end
      puts new_string
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  # return an array of all of the supplies that are used in the winter season
  # holiday_supplies = {
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
  bbq_holidays = []
  holiday_hash.each do |seasons, holidays|
    holidays.each do |holiday, items|
      items.each do |item|
        if item == "BBQ"
          bbq_holidays << holiday
        end
      end
    end
  end
  bbq_holidays
end







