require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
  end

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


def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash.each do |season, day|
    day.each do |key, supplies|
      supplies << supply
    end
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] = [supply]
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
holiday_hash[season][holiday_name] = supply_array
holiday_hash
end

  # code here
  # remember to return the updated hash


def all_winter_holiday_supplies(holiday_hash)
  winter_supplies =[]
  holiday_hash[:winter].map do |day, supplies|
    winter_supplies << supplies
    end
winter_supplies = winter_supplies.flatten

end
# binding.pry

  # return an array of all of the supplies that are used in the winter season


def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holiday|
  puts "#{season.to_s.capitalize!}:"
    holiday.each do |day, supplies|
      day_s = day.to_s.split('_').map {|word| word.capitalize!}.join(' ')
      supplies_s = supplies.join(', ')
      puts "  #{day_s}: #{supplies_s}"
  end
end
end


  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.



def all_holidays_with_bbq(holiday_hash)
  result = holiday_hash.map do |season, holiday|
    holiday.map do |day, supplies|
      if supplies.include?("BBQ")
        day
      end
    end
  end
  result.flatten.compact
end
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
