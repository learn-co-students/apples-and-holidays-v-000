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
  holiday_hash.each do |k, v|
    if k == :winter
      v.each do |a, b|
        b << supply # b is the array that holds the supplies
      end
    end
  end
  holiday_hash
end 

def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash.each do |key, value|
    if value.include? :memorial_day
      value.each do |k,v|
        v << supply
      end
    end
  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season] = {holiday_name => supply_array}
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  holiday_hash.each do |key, value|
    if key == :winter
      return value.values.flatten
    end
  end
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.

  holiday_hash.each do |key, value| # first level
    puts key.to_s.capitalize! + ":" # Print out the seasons
    
    value.each do |holiday, supply| # second level - loops through holidays and their supplies
      # 'holiday' is the holiday symbol - christmas, new_years, etc
      
      key_array = holiday.to_s.split
      # ["christmas", "new_years", "fourth_of_july", "thanksgiving", "memorial_day"]
      new_array = [] # store properly formatted words here
      
      key_array.each do |word|
        
        if word.include? '_' # check for underscores
          word = word.tr("_"," ") # replace underscore with space
          temp_array = word.split # store multiple words to capitalize
          temp_array.each do |word|
            word.capitalize!
          end
          word = temp_array.join(" ") # join the array back into one phrase ie 'New Years'
          new_array << word # add formatted word to new_array
        else
          new_array << word.capitalize! 
        end
        new_array #  return new_array
      
      end

      value_string = supply.join(", ") # take supply array and split it into formatted string
      
      new_array.each do |word|
        puts "  #{word}: #{value_string}"
      end
    
    end

  end

end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  bbq_array = []
  holiday_hash.each do |season, holiday|
    holiday.each do |holiday, supplies|
      if supplies.include? "BBQ"
        bbq_array << holiday
        bbq_array
      end
    end
  end
  bbq_array
end



holiday_hash = {
  :winter => {
    :christmas => ["Lights", "Wreath"],
    :new_years => ["Party Hats"]
  },
  :summer => {
    :fourth_of_july => ["Fireworks", "BBQ"]
  },
  :fall => {
    :thanksgiving => ["Turkey"]
  },
  :spring => {
    :memorial_day => ["BBQ"]
  }
}

all_holidays_with_bbq(holiday_hash)

