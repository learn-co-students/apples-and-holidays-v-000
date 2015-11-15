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

  holiday_hash[:winter].each do |key, value|
    value << supply
  end
end
 

def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season] = {
    holiday_name => supply_array
  }
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
    season = season.to_s
    puts "#{season.capitalize}:"
      holiday.each do |day, value|
        new_holiday = ""
        divide = []
        divide = day.to_s.split("_")
        if divide.length > 1
          divide_cap = []
          divide.each do |i|
            divide_cap << i.capitalize            
          end
          new_holiday = divide_cap.join(" ")
        else
          new_holiday = divide.join
          new_holiday = new_holiday.capitalize
        end
        puts "  #{new_holiday}: #{value.join", "}"
      end
  end


end

def all_holidays_with_bbq(holiday_hash)
  bbq_days = []
  holiday_hash.each do |season, holiday|
    holiday.each do |key, value|
      if value.include? "BBQ"
        bbq_days << key
      end
    end
  end
  bbq_days
end







