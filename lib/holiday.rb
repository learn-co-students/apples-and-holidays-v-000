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
   holiday_supplies[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  index1 = holiday_hash[:winter][:christmas] 
  index2 = holiday_hash[:winter][:new_years] 
  holiday_hash[:winter][:christmas][index1.length + 1] = supply
  holiday_hash[:winter][:new_years][index2.length + 1] = supply
  holiday_hash
end


def add_supply_to_memorial_day(holiday_hash, supply)
  index1 = holiday_hash[:spring][:memorial_day] 
  holiday_hash[:spring][:memorial_day][index1.length + 1] = supply
  holiday_hash

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season] = {holiday_name => supply_array}

end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten

end

def all_supplies_in_holidays(holiday_hash)
   holiday_hash.each do |season, value|
    puts "#{season.capitalize}:" 
    value.each do |holiday, supplies|
      #puts "  #{holiday.capitalize}: #{supply}" 

      puts "  #{holiday.to_s.split("_").map {|w| w.capitalize}.join(" ")}: #{supplies.join(", ")}"
      end 
  end 

end

def all_holidays_with_bbq(holiday_hash)
 bbq_holidays = []
 holiday_hash.each do |seasons, values|
   values.map do |holiday, supplies| 
    if supplies.include?("BBQ")
     bbq_holidays << holiday
    end 
   end 
  end 
  return bbq_holidays
end







