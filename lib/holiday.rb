require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # 
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
   return holiday_supplies[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter][:christmas] << supply
  holiday_hash[:winter][:new_years] << supply 
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply 
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season] = {holiday_name => supply_array}

end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten

end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, hash|
    puts "#{season.capitalize}:"
    hash.each do |holiday, array|
      a = "#{holiday}"
      if a.include? "_"
      b = a.split("_")
      c = []
      b.collect do |word|
        c << word.capitalize
      end 
      d = c.join(" ")
      else 
      d = a.capitalize
      end
      array.collect do |s| 
        s.capitalize
      end 
      puts "  #{d}: #{array.join(", ")}"
      end
    end
end

def all_holidays_with_bbq(holiday_hash)
  y = []
  holiday_hash.each do |season, hash|
    hash.each do |holiday, array|
      array.each do |item|
        if item == "BBQ"
          y << holiday
        end 
      end 
    end 
  end 
  y 
end







