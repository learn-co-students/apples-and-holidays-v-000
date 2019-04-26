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

  holiday_hash[:winter].collect{|holiday, supplies| supplies << supply }
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array

  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season][holiday_name] = supply_array
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  result = []
  holiday_hash[:winter].each{|holiday, supplies| supplies.each{|supply| result << supply}}
  result
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

      ####### print the following #######
      ## holiday
      # convert holiday from a symbol to a string
      # split it in to words by '_'
      # capitalize each word
      # join it back in to on a string with spaces
      ## supplies
      # if its not the last supply item add ', ' before it
      puts "  #{holiday.to_s.split("_").collect { |word|  word.capitalize }.join(" ")}:#{supplies.collect.with_index { |supply, i| " #{supply}#{"," if i < supplies.length-1}"}.join("")}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  result = []
  holiday_hash.each do |season, holidays|
    holidays.each do |holiday, supplies|
      result << holiday if supplies.any? { |supply| supply == "BBQ" }
    end
  end
  result
end

puts all_holidays_with_bbq({:winter => {:christmas => ["Lights", "Wreath"],:new_years => ["Party Hats"]},:summer => {:fourth_of_july => ["Fireworks", "BBQ"]},:fall => {:thanksgiving => ["Turkey"]},:spring => {:memorial_day => ["BBQ"]}})
