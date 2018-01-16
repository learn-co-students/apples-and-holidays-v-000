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

   holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
   holiday_hash.each do |_season, day|
      day.each do |item, value|
         value << supply if item == :christmas || item == :new_years
      end
   end
end

def add_supply_to_memorial_day(holiday_hash, supply)
   holiday_hash[:spring][:memorial_day].push(supply)
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
   holiday_hash[season.to_sym][holiday_name.to_sym] = supply_array
   holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
   winter_supplies = []
   holiday_hash.each do |season, day|
      next unless season == :winter
      day.each do |_item, supplies|
         winter_supplies += supplies
      end
   end
   winter_supplies
end

def all_supplies_in_holidays(holiday_hash)
   holiday_hash.each do |season, day|
      puts season.to_s.capitalize + ':'
      day.each do |days, supplies|
         puts '  ' + days.to_s.tr('_', ' ').split.map(&:capitalize).join(' ') + ': ' + supplies.join(', ')
      end
   end
end

def all_holidays_with_bbq(holiday_hash)
   bbq_holidays = []
   holiday_hash.each do |_season, day|
      day.each do |days, supplies|
         bbq_holidays.push(days) if supplies.include?('BBQ')
      end
   end
   bbq_holidays
end
