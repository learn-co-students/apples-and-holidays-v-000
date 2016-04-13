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
  holiday_supplies[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above 
  # add the second argument, which is a supply, to BOTH the 
  # Christmas AND the New Year's arrays
  holiday_supplies[:winter][:christmas] << "Balloons"
  holiday_supplies[:winter][:new_years] << "Balloons"
end
 

def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_supplies[:spring][:memorial_day] << "Grill"
  holiday_supplies[:spring][:memorial_day] << "Table Cloth"
  
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season] = {holiday_name => supply_array}
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  holiday_supplies[:winter].values.flatten
end

def all_supplies_in_holidays(supplies_hash)
  holiday_supplies.each do |season, holiday_hash|
    puts "#{season.capitalize}:"
    holiday_hash.map do |holiday, supplies|
      if "#{holiday}".include?("_")
        #puts "  #{holiday.to_s.split("_").join(" ").capitalize}: #{supplies.join(", ")}"

        puts "  #{holiday.to_s.split("_").map {|word| word.capitalize}.join(" ")}: #{supplies.join(", ")}"
      else
        puts "  #{holiday.capitalize}: #{supplies.join(", ")}"
      end



        #puts "  #{holiday.to_s.split("_").join(" ").capitalize}: #{supplies.join(", ")}"
        #text.split.each{|i| i.capitalize}.join(' ')
      #else
       # puts "  #{holiday.to_s.capitalize}: #{supplies.join(", ")}"
    #  end
    end
  end
end
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  

def all_holidays_with_bbq(holiday_hash)
  holiday_supplies.map do |season, holidays|
    holidays.map do |holiday, supplies|
      if supplies.include?("BBQ")
        holiday
      end
    end
  end.flatten.compact  #<--- review... why does this work???? *COMPACT* ask about placement.
end