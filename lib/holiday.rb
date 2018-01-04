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
  #my original solution
=begin
holiday_hash[:winter][:christmas] << supply
holiday_hash[:winter][:new_years] << supply
=end

#since we are apply to EACH winter holiday we can use each enumerable
  holiday_hash[:winter].each do |holiday, supplies|
    supplies << supply
  end
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
  holiday_hash

  #remember we don't need to worry about what data type. the placeholder will
  #work for anything that is passed to it. so we don't need to put [:season],
  #just season will do!!

end

def all_winter_holiday_supplies(holiday_hash)

  # return an array of all of the supplies that are used in the winter season
  #my solution. Let the record show: I like mine better
holiday_hash[:winter].values.flatten

#their solution
=begin
  holiday_hash[:winter].each do |holiday, supplies|
    supplies
  end.flatten
=end
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  holiday_hash.each do |season, data|
    puts "#{season.to_s.capitalize}:"  #we don't need the .to_s because .capitalize will convert the symbol to a string automatically
      data.each do |holiday, supplies|
        puts "  #{holiday.to_s.split("_").map(&:capitalize).join(" ")}: #{supplies.join(", ")}" #we don't need the .to_s because .capitalize will convert the symbol to a string automatically
      end
  end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  holidays_with_bbq = []
  holiday_hash.each do |season, holiday|
    holiday.each do |holiday, supplies|
      supplies.select do |supply|
        if supply == "BBQ"
        holidays_with_bbq << holiday
        end
      end
    end
  end
  holidays_with_bbq


  #we could also do the following underneath holiday.each do
=begin
  holidays.map do |holiday, supplies|
    holiday if supplies.include? == ("BBQ")        #this statement returns holiday or nil if true#
  end
end.flatten.compact #this combines all arrays and removes 'nil'
=end
end
