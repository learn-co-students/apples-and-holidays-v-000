require 'pry'

def holiday_hash
{
   :winter => {
     :christmas => ["Lights", "Wreath"],
     :new_years => ["Party Hats"]
   },
   :summer => {
     :fourth_of_july => ["Fireworks", "BBQ"]
   },
   :fall => {
     :thanksgiving => ["Turkey"]
   },
   :spring => {
     :memorial_day => ["BBQ"]
   }
 }
end

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_supplies[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter].each do |holiday, supplies| supplies << supply
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring].each do |holiday, supplies| supplies << supply
  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash.each do |season, data|
    season = season.to_sym
    holiday_name = holiday_name.to_sym
    holiday_hash[season][holiday_name] = supply_array
  end
  return holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
	holiday_hash.each {|season, holidays| puts "#{season.to_s.capitalize}:"
    holidays.each {|holiday, supplies|
      puts "  #{holiday.to_s.split('_').map {|word| word.capitalize!}.join(' ')}: #{supplies.join(", ")}"
    }
  }
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  array = []
  holiday_hash.each {|season, holidays|
    holidays.each {|event, supply|
      if supply.include?("BBQ")
        array << event
      end
    }
  }
  array
end
