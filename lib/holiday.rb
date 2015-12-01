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
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter].each {|holiday, supplies| supplies << supply}
 
end
 

def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring].each {|holiday, supplies| supplies << supply}
  
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
 
  holiday_hash["#{season}".to_sym]["#{holiday_name}".to_sym] = supply_array
  holiday_hash
  
end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].collect{|holiday, supplies| supplies}.flatten
 
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each {|season, holiday| 
    puts "#{season.to_s.capitalize!}:"
    supplies_list = ""
    holiday.each {|holiday_name, supplies|
      if supplies.length == 1 
        supplies_list = supplies.first 
      else
        supplies_list = supplies.shift
        supplies.each{|supply| supplies_list << ", #{supply}"} 
      end
      puts "  #{holiday_name.to_s.split("_").each {|word| word.capitalize!}.join(" ")}: #{supplies_list}"
        }
      }
 
end

def all_holidays_with_bbq(holiday_hash)
  holiday_hash.collect {|season, holiday|
    # bbq_days = []
    holiday.collect {|holiday_name, supplies|
      supplies.include?("BBQ") ? holiday_name : nil
    }
  }.flatten.compact



end







