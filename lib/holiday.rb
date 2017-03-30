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
  holiday_supplies[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_supplies[:winter].keys.each do |x|
    holiday_supplies[:winter][x] << "Balloons"
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
end

def all_winter_holiday_supplies(holiday_hash)
  array = []
  holiday_hash[:winter].each do |holiday, items|
    items.each do |x|
      array << x
    end
  end
  array
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  holiday_hash.each do |season, y|
    s = season.to_s.capitalize
    puts "#{s}:"
    holiday_hash[season].each do |holiday, supplies|
      hday = holiday.to_s.split("_")
      h_cap = hday.collect! {|x| x.capitalize}
      h = h_cap.join(" ")
      sup = supplies.join(", ")
      puts "  #{h}: #{sup}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  bbq_array = []
  holiday_hash.map do |season, holidays|
    holidays.map do |holiday, supplies|
      bbq_array << holiday if supplies.include?("BBQ")
    end
  end
  bbq_array
end
