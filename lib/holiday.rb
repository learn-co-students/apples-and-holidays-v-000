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
   return holiday_hash[:spring][:memorial_day][0]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
      holiday_hash[:winter].each do |day, items|
     items.push(supply)
    end
end


def add_supply_to_memorial_day(holiday_hash, supply)
    holiday_hash[:spring][:memorial_day].push(supply)

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
    holiday_hash[season][holiday_name] = supply_array
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
      new_array = []
      holiday_hash[:winter].each do |holiday, value|
        new_array << value
      end
     return new_array.flatten # will actually make the values in the form of array (ie one array instead of [["Lights", "Wreath"], ["Party Hats"]] )
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
        holiday.each do|holiday, supplies|

            puts "  #{holiday.to_s.split('_').map {|w| w.capitalize}.join(' ')}: #{supplies.join(", ")}"
           end
    end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  new_array = []
  holiday_hash.each do |holiday,valuse|
       valuse.each do |el,val|
       if val.include?("BBQ") == true
         new_array << el
       end
   end
end
     return new_array

end
