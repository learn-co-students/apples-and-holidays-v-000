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
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter].each do |_holiday, supplies|
    supplies << supply
  end
end

def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
end

def all_winter_holiday_supplies(holiday_hash)
  supply = []

  holiday_hash[:winter].each do |_holiday, supplies|
    supplies.each do |items|
      supply << items
    end
  end

  supply
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, season_hash|
    puts "#{season.capitalize}:"
    season_hash.each do |holiday, supplies|
      puts "  #{holiday.to_s.split('_').map(&:capitalize).join(' ')}: #{supplies.join(', ')}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  bbq_holidays = []

  holiday_hash.each do |_season, holidays|
    holidays.each do |holiday, supplies|
      supplies.each do |item|
        bbq_holidays << holiday if item == 'BBQ'
      end
    end
  end

  bbq_holidays
end
