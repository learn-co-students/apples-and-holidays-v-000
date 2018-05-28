require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
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
   #return the second element in the 4th of July array
  return holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  #holiday_hash[:winter][:christmas] << "Balloons"
  #holiday_hash[:winter][:new_years] << "Balloons"
  holiday_hash.each do |season, season_hash|
    season_hash.each do |attribute, data|
      if attribute== :christmas||attribute== :new_years
        data.push(supply)
      end
    end
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  #holiday_hash[:spring][:memorial_day] << "Grill"
  #holiday_hash[:spring][:memorial_day] << "Table Cloth"
  holiday_hash.each do |season, season_hash|
    season_hash.each do |attribute, data|
      if attribute== :memorial_day
        data.push(supply)
      end
    end
  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
    holiday_hash[season][holiday_name] = supply_array
    holiday_hash

end

def all_winter_holiday_supplies(holiday_hash)
   holiday_hash[:winter].map do |holiday, supplies|
    supplies
  end.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holidays|
    puts "#{season.capitalize}:"
    holidays.each do |holiday, supplies|
      puts"  #{holiday.to_s.split('_').map {|w| w.capitalize }.join(' ') }: #{supplies.join(", ")}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  holiday_hash.map do |season, holidays|
    holidays.map do |holiday, supplies|
      holiday if supplies.include?("BBQ")
    end
  end.flatten.compact
end







