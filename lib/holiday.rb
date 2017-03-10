require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter].each {|key, array| array << supply}
end

def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, season_holiday_hash|
    puts "#{season.to_s.split("_").each {|word| word.capitalize!}.join(" ")}:"
      season_holiday_hash.each do |holiday, holiday_supply_array|
        puts "  #{holiday.to_s.split("_").each {|word| word.capitalize!}.join(" ")}: #{holiday_supply_array.join(", ")}"
      end # season_holiday_hash do end
  end # holiday_hash do end
end # def end

# holiday_hash = {
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

def all_holidays_with_bbq(holiday_hash)
  bbq_holidays = []
  holiday_hash.each do |season, season_holiday_hash|
    season_holiday_hash.each do |holiday, holiday_supply_array|
      if holiday_supply_array.any? {|supply| supply == "BBQ"}
        bbq_holidays << holiday
      end # holiday_supply_array if end
    end # season_holiday_hash do end
  end # holiday_hash do end
  bbq_holidays
end # def end
