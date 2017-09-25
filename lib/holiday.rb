

holiday_supplies = {
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

def second_supply_for_fourth_of_july(holiday_hash)
  # return the second element in the 4th of July array
  holiday_supplies[:summer][:fourth_of_july][1]
end


def add_supply_to_winter_holidays(holiday_hash, supply)
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
    holiday_hash[:winter].each do |holiday, supplies|
      supplies<<supply
   end

end


def add_supply_to_memorial_day(holiday_hash, supply)
  #holiday_hash[:spring][:memorial_day].insert(1, supply)
  holiday_hash[:spring][:memorial_day].push (supply)

end


def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash

end


def all_winter_holiday_supplies(holiday_hash)

  holiday_hash[:winter].map { |holiday, supplies| supplies }.flatten

end
# iterate through holiday_hash and print items such that your readout resembles:
# Winter:
#   Christmas: Lights, Wreath
#   New Years
# Summer:
#   Fourth Of July: Fireworks, BBQ
# etc.

def all_supplies_in_holidays(holiday_hash)

    holiday_supplies.each do |season, holidays |
      puts "#{season.capitalize}:"
      holidays.each do |holiday, supplies|
        capitalized_holiday = holiday.to_s.split('_').map {|word| word.capitalize  }.join(' ')
        puts "  #{capitalized_holiday}: #{supplies.join(", ")}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  holiday_hash.map do |season, holidays|
    holidays.map do |holiday, supplies|
      holiday if supplies.include? ("BBQ")
      end
  end.flatten.compact # explanation/
end
