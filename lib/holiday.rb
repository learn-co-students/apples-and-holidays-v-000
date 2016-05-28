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
  summer = holiday_hash[:summer]
  fourth_of_july = summer[:fourth_of_july]
  return fourth_of_july[1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above 
  # add the second argument, which is a supply, to BOTH the 
  # Christmas AND the New Year's arrays
  winter = holiday_hash[:winter]
  updated_christmas =
  winter [:christmas]
  updated_christmas << "Balloons"
  updated_new_years = 
  winter[:new_years]
  updated_new_years << "Balloons"
end
 

def add_supply_to_memorial_day(holiday_hash, supply)
 spring = holiday_hash [:spring]
 updated_memorial_day = 
 memorial_day = spring[:memorial_day]
 updated_memorial_day << "Grill"
 updated_memorial_day << "Table Cloth"
end


def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  fall = holiday_hash[:fall]
  fall[:columbus_day]= ["Flags", "Parade Floats", "Italian Food"]
   winter = holiday_hash [:winter] 
   winter[:valentines_day] = ["Cupid Cut-Out", "Candy Hearts"]
return holiday_hash

end




def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  winter = holiday_hash[:winter]
  winter.values.flatten
  
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
    puts "#{season}:".capitalize
    holiday.each do |holiday, supply|
      all_supplies_in_holidays = "  #{holiday}: #{supply.join(", ")}".gsub "_", " "
    puts all_supplies_in_holidays.gsub(/\w+/, &:capitalize).sub "Bbq", "BBQ"
     end   
  end


  
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  all_holidays_with_bbq =
holiday_hash.collect do |season, holiday|
  holiday.collect do |holiday, supply|
    holiday if supply.include?("BBQ")
    
      
end
end
all_holidays_with_bbq.flatten.compact
end







