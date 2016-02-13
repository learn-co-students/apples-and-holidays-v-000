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
  holiday_supplies[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter][:christmas] << supply 
  holiday_hash[:winter][:new_years] << supply 
end

def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply 
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season] = { holiday_name => supply_array }
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten 
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, values|
      puts "#{season.capitalize}:"
      values.each do |holiday, holiday_items|
        puts "   #{holiday.to_s.split('_').map {|holiday2| holiday2.capitalize }.join(' ') }: #{holiday_items.join(', ')}"
  end 
end 
end 

def all_holidays_with_bbq(holiday_hash)
  result = []
  holiday_hash.each do |key, value|
    value.map do |key2, value2|
      if value2.include?("BBQ") 
        result << key2 
      end 
    end     
  end  
  result  
end

all_supplies_in_holidays(holiday_hash)