require 'pry'

holiday_hash = {
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
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash.each do |season, holiday|
    holiday.each do |inner_holiday, decorations|
      if inner_holiday == :christmas || :new_years
        decorations.push(supply)
      end
    end
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash.each do |season, holiday|
    holiday.each do |inner_holiday, decorations|
      if inner_holiday == :memorial_day
        decorations.push(supply)
      end
    end
  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
end

def all_winter_holiday_supplies(holiday_hash)
  winter_supplies = []
  holiday_hash.each do |season, holiday|
    if season == :winter
      holiday.each do |inner_holiday, decorations|
        winter_supplies.concat(decorations)
      end
    end
  end
  winter_supplies
end



def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holiday|
    puts season.to_s.capitalize + ":"
    holiday.each do |inner_holidays, supplies|
      formatted_holiday = inner_holidays.to_s.capitalize.split("_").collect{|x| x.capitalize}.join(" ")
      formatted_supplies = supplies.join(", ")
      puts "  #{formatted_holiday}: #{formatted_supplies}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  bbq_holidays = []
  holiday_hash.each do |season, holiday|
    if season == :spring || season == :summer
      holiday.each do |inner_holiday, supplies|
        bbq_holidays.push(inner_holiday) if supplies.include?('BBQ')
      end
    end
  end
  bbq_holidays
end
