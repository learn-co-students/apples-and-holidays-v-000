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

  holiday_hash[:"#{season}"] = {holiday_name=>supply_array}


  return holiday_hash

end


def all_winter_holiday_supplies(holiday_hash)
  newArray = []
holiday_hash.each do |key, value|

  if key == :winter
    value.each do |key1, value1|

      newArray << value1
    end
  end
end
return newArray.flatten

end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.

  holidays = []
  holiday_words = []
  holiday_array = ''
  holiday_hash.each do |season, holidays_and_supplies|
    puts "#{season.capitalize}:"
    holidays_and_supplies.each do |holiday, supplies|
      #puts "holidays_and_supplies #{holidays_and_supplies}"
      #puts "holiday #{holiday}"
      #puts "supplies #{supplies}"
      holiday.to_s.gsub('_', ' ')
      #puts "holiday new #{holiday.to_s.gsub('_', ' ').split}"
      holiday_array = holiday.to_s.gsub('_', ' ').split.join(' ')
      holiday_array = holiday_array.split.map(&:capitalize).join(' ')
      puts "  #{holiday_array}: #{supplies.join(', ')}"

      #puts "holiday array, #{holiday_array}"
      #holiday_array.each do |word|
       # puts "word.capitalize, #{word.capitalize}"
    #    holiday_words << word.capitalize
        #puts "holiday_words, #{holiday_words}"
        #puts "holiday_words.join, #{holiday_words.join(' ')}"
        #puts "supplies.join, #{supplies.join(', ')}"
      #end
    end
   #puts "#{season}"
    #puts "#{holiday_array}"
  end



end


def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  
  holidays_w_BBQ = []
  
  holiday_hash.each do |season, holidays_and_supplies|
    holidays_and_supplies.each do |holiday, supplies|
      if supplies.include? "BBQ"
        holidays_w_BBQ << holiday
      end
    end
  end
  return holidays_w_BBQ
end
