require 'pry'

# holiday_hash looks like this:
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

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter][:christmas] = supply
  holiday_hash[:winter][:new_years] = supply
end

def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] = supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holidays|
    new_season = ""
    new_season << season.to_s.capitalize!
    puts "#{new_season}:"
    holidays.each do |holiday, gear|
      new_holiday = holiday.to_s.split("_")
        new_holiday.collect! {|w| w.capitalize}
      puts "  #{new_holiday.join(" ")}: #{gear.join(", ")}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  holidays_with_bbqs = []
  holiday_hash.each do |season, holiday|
    holiday.each do |holiday_names, supply|
      supply.each do |supplies|
        if supplies == "BBQ"
          holidays_with_bbqs << holiday_names
        end
      end
    end
  end
  holidays_with_bbqs
end
