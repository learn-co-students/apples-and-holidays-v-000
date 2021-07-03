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

  return holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays

  # holiday_hash[:winter][:christmas] << supply
  # holiday_hash[:winter][:new_years] << supply

  holiday_hash.each do |seasons, holiday|
   holiday.each do |winter, supplies_array|
     supplies_array << supply
   end
 end

  #  holiday_hash[:winter].each do |holiday, supplies_array|
  #    supplies_array << supply
  #  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array

  holiday_hash[:spring][:memorial_day] << supply

  # holiday_hash[:spring].each {|holiday, supply_array| supply_array << supply}
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season][holiday_name] = supply_array
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  new_array = []
  holiday_hash[:winter].collect do |holiday, supplies_array|
    new_array << supplies_array
  end #can get rid of new_array stuff and have end.flatten
  new_array.flatten
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
    holidays.each do |holiday, supplies_array|
      puts "  #{holiday.to_s.split("_").map{|w| w.capitalize}.join(" ")}: #{supplies_array.join(", ")}"
    end
  end

end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  holiday_hash.map do |season, holidays|
    holidays.map do |holiday, supply_array|
      if supply_array.include?("BBQ")
        holiday
      end
    end
  end.flatten.compact #flateen to make single dimensonal array and compact to get rid of nil values

end
