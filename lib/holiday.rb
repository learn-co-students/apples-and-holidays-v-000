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
    holiday_hash.each do |season, holiday|
        if season == :winter
        holiday.each do |holiday, supplies|
          supplies << supply
        end
      end
    end
end

def add_supply_to_memorial_day(holiday_hash, supply)

      holiday_hash.each do |season, holiday|
          if season == :spring
          holiday.each do |holiday, supplies|
            supplies << supply
          end
        end
      end
  end



  def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
    holiday_hash[season][holiday_name] = supply_array
  end

  def all_winter_holiday_supplies(holiday_hash)
      supplies = []
      holiday_hash.collect do |season, holidays|
        if season == :winter
        supplies << holidays.values
        end
    end
    return supplies.flatten
 end






def all_supplies_in_holidays(holiday_hash)

      holiday_hash.each do |seasons, holidays|
           puts "#{seasons.to_s.capitalize}:"
         holidays.each do |holidays, supplies|
           puts "  #{holidays.to_s.split('_').map(&:capitalize).join(' ')}: #{supplies.join(", ")}"
         end
      end
end






def all_holidays_with_bbq(holiday_hash)
 # return an array of holiday names (as symbols) where supply lists
 # include the string "BBQ"
 holiday_array = []
  holiday_hash.collect do |season, holidays|
    holidays.collect do |holiday, supply|
      if supply.to_s.include?("BBQ") == true
         holiday_array << holiday
      end
   end
 end
 return  holiday_array
end
