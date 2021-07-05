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
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  
  holiday_hash[:winter][:christmas] << supply
  holiday_hash[:winter][:new_years] << supply

end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  
  holiday_hash[season][holiday_name] = supply_array
  
  holiday_hash

end

def all_winter_holiday_supplies(holiday_hash)
  final_array = [ ]
  holiday_hash[:winter].values.each do |item|
    item.each do |thing|
      final_array << thing
    end
  end
  final_array
end

def all_supplies_in_holidays(holiday_hash)
 stringed_holiday = [ ]
 seasons_array = [ ]
 final_seasons_array = [ ]
 holiday_string = [ ]
 
  holiday_hash.each do |season, holidays|
      puts "#{season.to_s.scan(/[a-z]/).join.capitalize}:"
    holidays.each do |name, supplies|
      stringed_holiday = name.to_s.gsub("_", " ").split
      final_holiday = stringed_holiday.map { |x| x.capitalize}.join(" ")
      puts "  #{final_holiday}: #{supplies.join(", ")}"
    end
  end
end

  
def all_holidays_with_bbq(holiday_hash)
  holiday_array = [ ]
  holiday_hash.each do |season, holiday|
    holiday.each do |day, item|
      if item.include?("BBQ")
        holiday_array << day
      end
    end
  end
  holiday_array
end
      #if thing.include?("BBQ")
        #holiday_array << day
      #end
    #end
  #end
  #holiday_array
#end

  #if holiday_hash[holiday].include?("BBQ")
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"

