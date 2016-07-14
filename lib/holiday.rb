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
  holiday_hash.each do |season, specific_holiday_hash|
    specific_holiday_hash.each do |attribute, data|
      if attribute == :fourth_of_july
        return data[1]
      end
    end
  end
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash.each do |season, specific_holiday_hash|
    if season == :winter
      specific_holiday_hash.each do |attribute, data|
        data << supply
      end
    end
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash.each do |season, specific_holiday_hash|
    if season == :spring
      specific_holiday_hash.each do |attribute, data|
        data << supply
      end
    end
  end
end


def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash.each do |current_season, specific_holiday_hash|
    if current_season == season
      holiday_hash[current_season][holiday_name] = supply_array
    end
  end
end


def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  collection = []
  holiday_hash.each do |season, holiday|
    if season == :winter
    holiday.each do |attribute, data|
      data.each do |item|
        collection << item
      end
    end
    end
  end
  collection
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
    if season == :winter
      puts "Winter:"
    elsif season == :summer
      puts "Summer:"
    elsif season == :fall
      puts "Fall:"
    else
      puts "Spring:"
    end
    holiday.each do |event, items|
      if event == :christmas
        puts "  Christmas: #{items.join(", ")}"
      elsif event == :new_years
        puts "  New Years: #{items.join(", ")}"
      elsif event == :fourth_of_july
        puts "  Fourth Of July: #{items.join(", ")}"
      elsif event == :thanksgiving
        puts "  Thanksgiving: #{items.join(", ")}"
      else
        puts "  Memorial Day: #{items.join(", ")}"
      end
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  collection = []
  holiday_hash.each do |season, holiday|
    holiday.each do |attribute, data|
      if data.include? "BBQ"
        collection << attribute
      end
    end
  end
  collection
end
