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
  holiday_hash[:winter][:christmas] << supply
  holiday_hash[:winter][:new_years] << supply 
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply 
end #ends def 


def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season] = { holiday_name => supply_array }
  return holiday_hash
end #ends function 

def all_winter_holiday_supplies(holiday_hash)
 return holiday_hash[:winter].values.flatten
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
    puts "#{season.to_s.capitalize}:"
    holiday.each do |holiday_name, supplies|
      puts "  #{holiday_name.to_s.split("_").collect {|split_holiday_name| split_holiday_name.capitalize}.join(" ")}: #{supplies.join(", ")}"
    end #ends second iteration 
  end #ends first iteration
end #ends def

def all_holidays_with_bbq(holiday_hash)
   answer = []
    holiday_hash.collect do |season, holiday|
      holiday.collect do |holiday_name, supply|
        if supply.include? "BBQ" 
          answer << holiday_name
    end #ends second iteration 
  end # ends first iteration 
  end #ends 
  answer 
end 




