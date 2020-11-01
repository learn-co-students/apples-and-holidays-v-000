require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)

  # return the second element in the 4th of July array
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash[:winter][:christmas]<<supply
  holiday_hash[:winter][:new_years]<<supply
  holiday_hash

end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day]<<supply
  holiday_hash

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash


      holiday_hash[season][holiday_name]=supply_array


  holiday_hash
  end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  winter_supplies=[]
  holiday_hash[:winter].each do |holiday,supply|
  winter_supplies += supply
  end

winter_supplies
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
holiday_hash.each do |season, season_hash|
  key="#{season}".capitalize+":"
  puts key
  season_hash.each do |holiday, supplys|
    holiday=holiday.to_s
    holiday=holiday.gsub("_"," ")
    holiday=holiday.split
    new_holiday=holiday.map { |word| word.capitalize}

    holiday=new_holiday.join(" ")
    line="  "+holiday+ ": " + supplys.join(", ")
  puts line
  end


end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  bbq=[]
holiday_hash.each do |season,season_hash|
  season_hash.each do |holiday,supplies|
    supplies.each do |supply|
      if supply == "BBQ"
      bbq << holiday
      end
    end
  end
end
bbq
end
