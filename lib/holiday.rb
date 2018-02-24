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
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash.each do |season, holiday|
    holiday.each do |name_of_holiday, supplies|
      if name_of_holiday == :christmas || name_of_holiday == :new_years
        supplies << supply
      end #if name_of_holiday ==
    end #holiday.each
  end #holiday_hash.each
end #def add_supply_to_winter_holidays

def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash.each do |season, holiday|
    holiday.each do |name_of_holiday, supplies|
      if name_of_holiday == :memorial_day
        supplies << supply
      end #if name_of_holiday ==
    end #holiday.each
  end #holiday_hash.each
end #def add_supply_to_memorial_day

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  winter_supplies = []
  holiday_hash.each do |season, holiday|
    holiday.each do |name_of_holiday, supply|
      if name_of_holiday == :christmas || name_of_holiday == :new_years
        winter_supplies << supply
      end
    end
  end
  winter_supplies.flatten
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
    puts "#{season.capitalize}:"
    holiday.each do |holiday_name, supplies|
      capitalized_name = holiday_name.to_s.split("_").collect do |split_words_array|
        split_words_array.capitalize.join(" ")
      end
      puts " #{capitalized_name}: holiday_array: #{supplies.join(", ")}"
    end #holiday.each
  end #holiday_hash.each
end #def all_supplies_in_holidays

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  bbq_array = []

  holiday_hash.each do |season, holiday|
    holiday.each do |name_of_holiday, supplies|
      supplies.each do |supply|
        if supply == "BBQ"
          bbq_array << name_of_holiday
        end #if supply
      end #if supplies
    end #holiday.each
  end #holiday_hash.each
  bbq_array
end #def all_holidays_with_bbq

puts "End"
