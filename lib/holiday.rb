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
  holiday_hash.each do |season, holiday_names|
    if season == :winter
      holiday_hash[season].each do |holiday_name, val|
 #binding.pry
    holiday_path = holiday_hash[season][holiday_name]
        holiday_path << supply
      end
    end
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash.each do |season, holiday_names|
    if season == :spring
      holiday_hash[season].each do |holiday_name, val|
 #binding.pry
    holiday_path = holiday_hash[season][holiday_name]
        holiday_path << supply
      end
    end
  end

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash.each do |test_season, holiday_names|
    if test_season == season
    holiday_hash[season][holiday_name] = []

      supply_array.each do |widget|
        holiday_hash[season][holiday_name] << widget
 #binding.pry
      end
    end
  end

end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  holiday_hash.each do |test_season, holiday_names|
    flattened_array = []
    my_flat1=[]
    if test_season == :winter
      #binding.pry

      holiday_hash[test_season].each do |holiday_name, val|
        my_flat1 << holiday_hash[test_season][holiday_name]
      #  binding.pry

    end
 #binding.pry
 flattened_array = my_flat1.flatten
 return flattened_array
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

# THIS LOOP GOES THROUGH EVERY SEASON NAME WITH ITS HOLIDAY ARRAYS
  holiday_hash.each do |season_key, season_value|
# CAPITALIZE SEASON NAME AND PUT TO SCREEN
    puts season_key.to_s.capitalize + ':'
# INITIALIZE ARRAY FOR HOLIDAY LINES
    holiday_string_array = []
# INITIALIZE STRING TO HOLD MANIPULATIONS
    holiday_string = ''
# SECONDARY LOOP OF HOLIDAY NAMES AND CELEBRATION ARRAYS
      holiday_hash[season_key].each do |holiday_key, holiday_value|
# SPLIT HOLIDAY NAMES TO ARRAY ON SPACE IF THERE IS ONE
        holiday_string_array = holiday_key.to_s.split '_'
# GO THROUGH EACH WORD IN THE HOLIDAY NAME AND PERM_CAPITALIZE IT
            holiday_string_array.each do |widget|
              widget.capitalize!
            end
# GO THROUGH THE CELEBRATION ARRAY AND CAPITALIZE EACH WORD
            holiday_value.each do |widget2|
# CREATE LOOP TO SPLIT ACCESSORY NAMES WITH MORE THAN ONE WORD TO CAP ALL AND THEN RECOMBINE
              widget_string_array =[]
# SPLIT EACH CELEBRATION INTO MULTIPLE WORDS AND PUT IN ARRAY
              widget_string_array = widget2.split ' '
# ITERATE THROUGH ARRAY AND CAPITALIZE EACH WORD
              widget_string_array.each do |widget3|
                widget3.capitalize!
              end

              holiday_celeb_string = widget_string_array.join(' ')
              widget2 = holiday_celeb_string
# binding.pry
            end

            holiday_string = '  '+holiday_string_array.join(' ')+': '+holiday_value.join(', ')
            puts holiday_string
          #  binding.pry




      end
end

end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  # CREATE EMPTY ARRAY TO HOLD THE holidays
  holiday_array = []
    holiday_hash.each do |season_key, holiday_val|
      holiday_hash[season_key].each do |holiday_key, celeb_val|
      if holiday_hash[season_key][holiday_key].any? { |widget| widget == 'BBQ'  }
          holiday_array << holiday_key
      end
    end
  end
  return holiday_array
end
