require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter][:christmas] << supply
  holiday_hash[:winter][:new_years] << supply
end
 
def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] = supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash.keys { |k| if k == season; holiday_hash[k][holiday_name] = holiday_name end }
  holiday_hash[season][holiday_name] = supply_array
  return holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten
end


################################################################
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
################################################################

def all_supplies_in_holidays(holiday_hash)
  h = ""
  s = ""
  i = ""
  holiday_hash.each do |season,holiday| 
    s = season.to_s
    holiday_hash[season].each do |k, v|
      h = k.to_s
        i << v.join(", ")
    puts "#{s.capitalize}: "
    puts "  #{h.capitalize}: "+"#{i.capitalize}"
    end
  end
end
 
#---------------------------------------------------------

holiday_hash =
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

all_supplies_in_holidays(holiday_hash)