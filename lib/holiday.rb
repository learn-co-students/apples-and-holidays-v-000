require 'pry'

# holiday_supplies = {
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

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_supplies[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
 holiday_supplies[:winter][:christmas] << supply
 holiday_supplies[:winter][:new_years] << supply
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_supplies[:spring][:memorial_day] << supply
  holiday_supplies[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_supplies[season][holiday_name] = supply_array
  holiday_supplies
end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season_name, season_holiday_hash|
    puts humanize_key(season_name)
    season_holiday_hash.each do |holiday_name, supplies| 
      puts "#{humanize_key(holiday_name, 1)} #{supplies.join(", ")}"
    end
  end
end

def humanize_key(key, indentions=0)
  ("  " * indentions) + key.to_s.split('_').collect(&:capitalize).join(" ") + ":"
end

def all_holidays_with_bbq(holiday_hash)
  holiday_hash.values.inject(&:merge).select do |holiday_name, supplies|
    supplies.include?("BBQ")
  end.keys
end





