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
  holiday_supplies[:winter][:christmas] << "Balloons"
  holiday_supplies[:winter][:new_years] << "Balloons"

end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_supplies[:spring][:memorial_day] << "Grill"
  holiday_supplies[:spring][:memorial_day] << "Table Cloth"

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_supplies[:fall][:columbus_day] = ["Flags", "Parade Floats", "Italian Food"]
  holiday_supplies[:winter][:valentines_day] = ["Cupid Cut-Out", "Candy Hearts"]

end

def all_winter_holiday_supplies(holiday_hash)
  holiday_supplies[:winter].values.flatten

end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holidays|
     puts "#{season.to_s.capitalize}:"
     holidays.each do |holiday, supplies|
       puts "  #{holiday.to_s.split("_").collect {|word| word.capitalize}.join(" ")}: #{supplies.join(", ")}"
     end
   end

end

def all_holidays_with_bbq(holiday_hash)
  bbq_days = Array.new()
   holiday_supplies.each do |season, holidays|
     holidays.each do |holiday, supplies|
       bbq_days << holiday if supplies.include?("BBQ")
     end
   end
  bbq_days

end
