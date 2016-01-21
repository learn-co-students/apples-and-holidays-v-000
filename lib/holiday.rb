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
  holiday_supplies[:fall][:columbus_day]= ["Flags", "Parade Floats", "Italian Food"]
  holiday_supplies[:winter][:valentines_day]= ["Cupid Cut-Out", "Candy Hearts"]
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  supplies = []
  holiday_supplies[:winter].each do |holiday_key, supplies_value|
    supplies << supplies_value
  end
  return supplies.flatten
end



# iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holiday|
    puts "#{season.to_s.capitalize}:"
    holiday.each do |holiday_key, supplies|
      puts "  #{holiday_key.to_s.split("_").collect {|word| word.capitalize}.join(" ")}: #{supplies.join(", ")}"  
    end
  end
end



holiday_supplies = {
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


all_supplies_in_holidays(holiday_supplies)

# return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
def all_holidays_with_bbq(holiday_hash)
  grill_days = Array.new()
  holiday_supplies.each do |season, holidays|
    holidays.each do |holiday_key, supplies|
      grill_days << holiday_key if supplies.include?("BBQ")
    end  
  end
  grill_days
end










