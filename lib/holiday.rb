require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter][:christmas] << supply
  holiday_hash[:winter][:new_years] << supply
  
end
 

def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  holiday_hash[:spring][:memorial_day] << supply
  
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
 holiday_hash[season][holiday_name] = supply_array
holiday_hash  
end

def all_winter_holiday_supplies(holiday_hash)
  winter_supplies = []
  holiday_hash.each do |season, holiday_hash|
    if season == :winter
      winter_supplies = holiday_hash[:christmas] << holiday_hash[:new_years]
    end
  end
  winter_supplies= winter_supplies.flatten
  winter_supplies

end

def captilize_first_letter(word)
  word = word.split("")
  word= word.each_with_index do |char,i| 
    if char == "_"
    
    word[i] = " "
  end
end
  word= word.join
  word= word.split.map { |i| i.capitalize }.join(' ')
  
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |seasons, season_holiday_hash|
    seasons= seasons.to_s
    seasons= captilize_first_letter(seasons)
    puts "#{seasons}:"
    season_holiday_hash.each do |holiday, supply_array|
      holiday= holiday.to_s
      holiday= captilize_first_letter(holiday)
      supply_array = supply_array.flatten.join(", ")
      puts "  #{holiday}: #{supply_array}"

    end
  end

  
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  
end

def all_holidays_with_bbq(holiday_hash)
  holiday_keys= []
  holiday_hash.each do |seasons, season_holiday_hash|
    season_holiday_hash.each do |holiday, supply_array|
      supply_array.each do |supplies|
        if supplies == "BBQ"
          holiday_keys << season_holiday_hash.keys
        end
      end
    end
  end
holiday_keys.flatten

end







