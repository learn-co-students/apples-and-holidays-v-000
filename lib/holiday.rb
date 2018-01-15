require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter].each do |day, things|
    things << supply
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  #holiday_hash.values.flatten
  winter_supplies = []

  holiday_hash[:winter].each do |winter_holiday, value|
    winter_supplies << value
  end
  winter_supplies.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_supply_string = ""
  holiday_hash.each do |season, holidays|
     #puts "#{season.to_s.capitalize}: "
     holiday_supply_string += "#{season.capitalize}:\n"

     holidays.each do |holiday, supplies|
       holiday_string = holiday.to_s.capitalize
       if holiday_string.include?("_")
         holiday_string = holiday_string.split("_").map(&:capitalize).join(" ")
       end
       holiday_supply_string += "  #{holiday_string}: " + supplies.join(", ") + "\n"
     end
 end
  puts holiday_supply_string
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  bbq_holidays = []
    holiday_hash.each do |season, holiday_supply|
      holiday_supply.each do |holiday, supplies|
        supplies.each do |supply|
          if supply.include?("BBQ")
            bbq_holidays << holiday
          end
        end
      end
    end
    bbq_holidays


end
