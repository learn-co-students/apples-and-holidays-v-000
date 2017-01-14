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
    return   holiday_hash[:summer][:fourth_of_july][1]
    #binding.pry
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash[:winter][:christmas]<<"Balloons"
  #binding.pry
  holiday_hash[:winter][:new_years]<<"Balloons"
  #binding.pry
  return holiday_hash[:winter][:christmas]
  return holiday_hash[:winter][:new_years]
end
def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  #holiday_hash.each {|season, day|
  #  day.each {|day,supplies|
  #    if day== :memorial_day
        #supplies.push("Grill, Table Cloth")
  #      supplies.push("Grill")
  #    end
      #binding.pry
  #    }
  #  }
  #supply = gets.chomp
  holiday_hash[:spring][:memorial_day].push("#{supply}")
  #binding.pry
  return holiday_hash[:spring][:memorial_day]
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  #binding.pry
  holiday_hash[season][holiday_name]=supply_array
  #holiday_name = supply_array
  #binding.pry
  return holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  array = []
  holiday_hash[:winter].each_value do |value|
    #http://ruby-doc.org/core-2.0.0/Hash.html
    array<< value
    #binding.pry
  end
#binding.pry
b=array.flatten
#https://ruby-doc.org/core-2.2.0/Array.html#method-i-flatten
return b
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  array = []
  holiday_hash.each_value do |value|
    #http://ruby-doc.org/core-2.0.0/Hash.html
    array<< value
    #binding.pry
  end
#binding.pry
b=array.to_s
c = b.delete "{", "}", "[", "]", ":"
d = []
binding.pry
c.each_char{|value|
  #binding.pry
  if value !="{"
  #  binding.pry
    d.push ("#{value}")
  #  binding.pry
  end
}
return d
binding.pry
end
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"

end
