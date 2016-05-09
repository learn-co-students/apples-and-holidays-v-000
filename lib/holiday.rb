require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  {
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
  # holiday_hash is identical to the one above 
  # add the second argument, which is a supply, to BOTH the 
  # Christmas AND the New Year's arrays

  holiday_supplies[:winter][:christmas] << "Balloons"
  holiday_supplies[:winter][:new_years] << "Balloons"
  
end
 

def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array

  holiday_supplies[:spring][:memorial_day] << "Grill"
  holiday_supplies[:spring][:memorial_day] << "Table Cloth"

  
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash

  holiday_supplies[:fall][:columbus_day] = ["Flags", "Italian Food", "Parade Floats"]
  holiday_supplies[:winter][:valentines_day] = ["Candy Hearts", "Cupid Cut-Out"]


  holiday_supplies

  
end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash.select do |season, holiday_and_items|
    if season == :winter
        holiday_and_items.each do |holiday, item|
          return item
        end
      end
  end
end

# from Avidor:

"So it'll save the key and hash combo for anything that evals to true, right/

So if just one holiday in the inner select evals to true, that whole season evals to true in the outter select and the whole season is 'selected'"

# end from Avidor



def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.


  
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"

end







