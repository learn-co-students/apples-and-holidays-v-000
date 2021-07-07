require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash[:winter][:christmas] << supply
  # holiday_hash[:winter][:new_years] << supply
  holiday_hash[:winter].each do |holiday, supplies|
    supplies << supply
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
  holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season,holiday_k|
    season = season.to_s.tr(":",'').capitalize + ":"
    puts season

    holiday_k.each do |holiday_s,supply|
      holiday = holiday_s.to_s.tr(":",'').tr("_"," ")
      holiday = holiday.split.map{|str| str.capitalize }.join(' ') + ": "
      n = supply.length
      i = 1
      while i <= n
        holiday += supply[i-1]
        if i != n
          holiday += ", "
        end
        i += 1
      end
      puts "  #{holiday}"
    end
  end

end


def all_holidays_with_bbq(holiday_hash)
  turbo_encabulator = []
  holiday_hash.each { |season,holidays|
    holidays.each { |holiday,items|
      if items.include?("BBQ")
        turbo_encabulator << holiday
      end
    }
  }
return turbo_encabulator
end
