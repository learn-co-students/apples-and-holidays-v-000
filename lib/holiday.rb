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
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  
  holiday_hash.each do |k, v|
    if k == :winter
      v.each do |k_, v_|
        v_ << supply
      end
    end
  end
  holiday_hash
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  
  holiday_hash.each do |k, v|
    if k == :spring
      v.each do |k_, v_|
        if k_ == :memorial_day
          v_ << supply
        end
      end
    end
  end
  holiday_hash

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  hsh = {holiday_name => supply_array}
  holiday_hash[season] = hsh
  
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  vals = holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  
  holiday_hash.each do |k, v|
    k_to_s = k.to_s.gsub(/[_]/, " " )
    k_to_s = k_to_s.split.collect { |e| e.capitalize}
    k_to_s = k_to_s.join(" ")
    
    puts k_to_s + ":"
    v.each do |k_, v_|
      k_to_s_ = k_.to_s.gsub(/[_]/, " " )
      k_to_s_ = k_to_s_.split.collect { |e| e.capitalize}
      k_to_s_ = k_to_s_.join(" ")
      
      puts "  " + k_to_s_ + ": " + v_.join(", ")  
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  rtn = []
  holiday_hash.each do |k, v|
    v.each do |k_, v_|
      if v_.index("BBQ")
        rtn << k_
      end
    end
  end
  rtn
end







