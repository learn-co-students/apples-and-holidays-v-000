require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  # given that holiday_hash looks like this:
  # holiday_hash = {:winter => {:christmas => ["Lights", "Wreath"],:new_years => ["Party Hats"]},:summer => {:fourth_of_july => ["Fireworks", "BBQ"]},:fall => {:thanksgiving => ["Turkey"]},:spring => {:memorial_day => ["BBQ"]}}
  holiday_hash[:winter].keys.each do |key|
    holiday_hash[:winter][key] << supply
  end

holiday_hash
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
holiday_hash[:spring][:memorial_day] << supply
holiday_hash
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
holiday_hash[season][holiday_name] = supply_array
holiday_hash

end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  holiday_hash[:winter].values.flatten

end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
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
  holidaze = []
  holiday_hash.each { |season,holidays|
    holidays.each { |holiday,items|
      if items.include?("BBQ")
        holidaze << holiday
      end
    }
  }
return holidaze
end
