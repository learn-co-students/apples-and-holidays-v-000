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

  holiday_hash[:winter][:christmas] = "Balloons",
  holiday_hash[:winter][:new_years] = "Balloons"
  
end
 

def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day] = "Grill", "Table Cloth"
end

def add_new_holiday_with_supplies(holiday_hash, season, new_holiday_name, holiday_array)
  # code here
 holiday_hash[season][new_holiday_name] = holiday_array
  # remember to return the updated hash
 holiday_hash
end



def all_winter_holiday_supplies(holiday_hash)
 holiday_hash[:winter].map do |holiday, supplies|
 supplies
 end
.flatten
 end

def all_supplies_in_holidays(supplies_hash)
  holiday_supplies.each do |season, holidays|
    puts "#{season.capitalize}:"
    holidays.each do |holiday, supplies|
      puts "  #{holiday.to_s.split('_').map {|w| w.capitalize! }.join(' ') }: #{supplies.join(", ")}"
    end
  end
end

def all_holidays_with_bbq(supplies_hash)
supplies_hash.map do |season, holidays|
  holidays.map do |holiday, supplies|
    holiday if supplies.include? ("BBQ")
  end
 end
 .flatten.compact
end







