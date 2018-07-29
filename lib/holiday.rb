require 'pry'

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


def second_supply_for_fourth_of_july(holiday_hash)
   holiday_supplies[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)

 holiday_supplies[:winter][:christmas] = supply
 holiday_supplies[:winter][:new_years] = supply

end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_supplies[:spring][:memorial_day] = supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_supplies[:"#{season}"][:"#{holiday_name}"] = supply_array
end

def all_winter_holiday_supplies(holiday_hash)
  arr = []
  holiday_supplies[:winter].each do |holiday, supply|
    arr << supply
    end
    return arr.flatten
end


def all_supplies_in_holidays(holiday_hash)

   holiday_supplies.each do |season, holiday, supply|
    :season.to_s
   
    puts "#{season}:".capitalize!
    holiday.each do |holiday, supplies| 
      puts  "  #{holiday.to_s.split("_").map {|x| x.capitalize!}.join(" ")}: #{supplies.join(", ")}"
    end
   end
end

def all_holidays_with_bbq(holiday_hash)
 supply = []
 holiday_supplies.each do |holiday|
   holiday.include?("BBQ")
     supply << holiday

   end
  return supply   
  end








