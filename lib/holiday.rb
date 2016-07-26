require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
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
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  holiday_hash.each do |season, holiday|
    puts "#{(season.to_s).capitalize}:"
    holiday.each do |holiday, supplies|
      if holiday.to_s.include? "_"
        puts "  #{holiday.to_s.split('_').map(&:capitalize!).join(' ')}: #{supplies.join(', ')}"
      else
        puts "  #{holiday.to_s.capitalize}: #{supplies.join(', ')}"
      end
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  bbq = []
  holiday_hash.each do |season, parties|
    parties.each do |party, supplies|
      if supplies.include? "BBQ"
        bbq << party
      end
    end
  end
  bbq
end







