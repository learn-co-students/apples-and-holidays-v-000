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
  holiday_hash[:winter][:christmas] << supply
  holiday_hash[:winter][:new_years] << supply
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day][1] = supply

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season] = season
  holiday_hash[season] = {holiday_name => supply_array}
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  # holiday_hash[:winter].values
  array1 = []
  holiday_hash[:winter].each do |holiday, supplies|
    supplies.each do |data|
      array1 << data
    end
  end
  array1
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ     etc.
  holiday_hash.each {|season, holi_hash|
    puts "#{season.capitalize}:"
    holi_hash.each do |holiday, supplies|
      array2=[]
      supplies.each {|supply|
      array2 << supply
      array2
      }
      if holiday == :new_years
        puts "  New Years: #{array2[0]}"
      elsif holiday == :memorial_day
        puts "  Memorial Day: #{array2[0]}"
      elsif array2.length == 1
        puts "  #{holiday.capitalize}: #{array2[0]}"
      elsif holiday == :fourth_of_july
        puts "  Fourth Of July: #{array2[0]}, #{array2[1]}"
      elsif array2.length > 1
        puts "  #{holiday.capitalize}: #{array2[0]}, #{array2[1]}"
      end
    end
  }
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  array0 = []
  holiday_hash.each {|season, holi_hash|
    holi_hash.each do |holiday, supplies|
      supplies.each do |supply|
        if supply == "BBQ"
          array0 << holiday
        end
      end
    end
  }
  array0
end
