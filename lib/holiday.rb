
require 'pry'

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

def second_supply_for_fourth_of_july(holiday_supplies)
  holiday_supplies[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_supplies, supply)
  holiday_supplies[:winter].each do |holiday, supplies|
    supplies << supply
  end
end

def add_supply_to_memorial_day(holiday_supplies,supply)
  holiday_supplies[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_supplies, season, holiday, supply)
  holiday_supplies[season][holiday] = supply
end


def all_winter_holiday_supplies(holiday_supplies)
  holiday_supplies[:winter].values.flatten 
  #holiday_supplies[:winter].collect do |holidays, supplies|
  #    supplies
  #end.flatten
end

def all_supplies_in_holidays(holiday_supplies)
  holiday_supplies.each do |season, holiday|
    puts "#{season.capitalize}:"
    holiday.each do |holiday, supplies|
      puts "#{holiday.to_s.split('_').collect {|w| w.capitalize}.join(' ')}: #{supplies.join(', ')}"
    end
  end
end


def all_holidays_with_bbq(holiday_supplies)
  holiday_supplies.collect do |season, holiday|
    holiday.collect do |holiday, supplies|
      holiday if supplies.include? "BBQ"
    end
  end.flatten.compact
end
