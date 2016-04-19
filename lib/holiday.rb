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
=begin  holiday_hash.each do |season, holiday|
    if holiday == :christmas or :new_years
      
      holiday.merge(holiday_hash[:winter][:christmas]){|holiday| holiday == ["#{supply}"]}
    end
  end
=end
holiday_hash[:winter][:christmas] << supply
holiday_hash[:winter][:new_years] << supply
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
  
  holiday_hash.each do |season, holiday|
  puts "#{season.capitalize}:"
    holiday.each do |holiday_name, supplies|
      
      supplies_string = supplies.join(", ")
      puts "  #{holidaySymToCapitalizedString(holiday_name)}: #{supplies_string}"

    end

end
end

def holidaySymToCapitalizedString(sym)
  holiday_name = sym.to_s
  holiday_words = holiday_name.split("_")
  holiday_capitalized_words = holiday_words.map{|x| x.capitalize}
  holiday_capitalized_words.join(" ")
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  # i believe it's using the inlcude?, need a method that returns the keys
  # that has the string "BBQ"
  # maybe .fetch .assoc .compare_by_identity .rassoc
  # .keys - which seems to be the one, just have to shovel each key into an array
  holidays_with_bbq = []
  holiday_hash.each do |season, holiday|
    holiday.each do |holiday, supplies|
      #binding.pry
      if supplies.include?("BBQ") == true
        #binding.pry
      holidays_with_bbq << holiday
    end
  end
end
holidays_with_bbq
end







