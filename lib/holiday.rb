require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
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
end

  # add the second argument, which is a supply, to BOTH the Christmas AND the New Year's arrays
def add_supply_to_winter_holidays(holiday_hash, supply)
    holiday_hash[:winter].each do |holiday, value| 
      value << supply
  end
end

def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name]=supply_array
  holiday_hash
end
 
  # return an array of all of the supplies that are used in the winter season
def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].collect {|holiday, array| array}.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holiday|
    puts "#{season.to_s.capitalize}:"
    holiday.each do |h, supplies|
      results = h.to_s.split("_").map do |word|
        word.capitalize
      end.join(" ")
    s = supplies.join(", ")
      puts "  #{results}: #{s}"
      end
  end
end

def all_holidays_with_bbq(holiday_hash)
bbq_array = []
  holiday_hash.each do |season, holidays| 
    holidays.each do |name, values| 
      if holidays[name].include?("BBQ");
      bbq_array << name
      end
    end
  end
bbq_array
end
