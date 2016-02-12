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
 holiday_hash[:winter][:christmas]<<supply
 holiday_hash[:winter][:new_years]<<supply
end
 

def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_supplies[:spring][:memorial_day]<<supply
  
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
 holiday_hash[season][holiday_name]=supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten
  
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.

  holiday_hash.each do |season,data|
    puts"#{season.to_s.capitalize!}:"
    data.each do |holiday,data2|
      puts"  #{holiday.to_s.gsub("_"," ").split.map(&:capitalize).join(' ')}: #{data2.join(", ")}"
     end

  end
end

def all_holidays_with_bbq(holiday_hash)
output=[]
 holiday_hash.each do |season,data|
  data.each do |holiday,data2|
    data2.each do |supplies|
      if supplies == "BBQ"
        output<<holiday
      end
    end
  end
end
output
end







