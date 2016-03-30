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
  holiday_hash[:winter][:christmas] = "Balloons"
  holiday_hash[:winter][:new_years] = "Balloons"
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day] << "Grill"
  holiday_hash[:spring][:memorial_day] << "Table Cloth"
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[:fall][:columbus_day] = []
  holiday_hash[:fall][:columbus_day] << "Flags"
  holiday_hash[:fall][:columbus_day] << "Italian Food"
  holiday_hash[:fall][:columbus_day] << "Parade Floats"
  holiday_hash[:winter][:valentines_day] = []
  holiday_hash[:winter][:valentines_day] << "Candy Hearts"
  holiday_hash[:winter][:valentines_day] << "Cupid Cut-Out"
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  holiday_hash[:winter].values
  holiday_hash.to_s
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  holiday_hash.each do |holiday, supply|
    puts "#{holiday.to_s.capitalize!}:"
    supply.each do |key, value|
      word = key.to_s.split("_")
      words = word.collect {|x| x.capitalize}.join(" ")
        puts "  #{words}: #{value.join(", ")}"
      end
    end
   end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  array = []
  holiday_hash.each do |season_hash, data|
    data.each do |holiday, supplies|
      if supplies.include?("BBQ")
        array << data.key(supplies)
      end
    end
  end
  array
end
