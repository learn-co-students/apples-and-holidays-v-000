require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # # given that holiday_hash looks like this:
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
  holiday_supplies = {
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
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash[:winter].each do |holidays, supplies|
    supplies << supply
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)

  holiday_hash[:spring].each do |holidays, supplies|
    supplies << supply
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array

  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # holiday_supplies = {
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
    holiday_hash[season][holiday_name] = supply_array
    holiday_hash
  # code here
  # remember to return the updated hash
  end


def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  holiday_hash[:winter].map do |holiday, supplies|
  supplies
  end.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holiday|
    puts "#{season.capitalize}:"
  holiday.each do |holidays, supplies|
    puts"  #{holidays.to_s.split('_').map {|w| w.capitalize }.join(' ') }: #{supplies.join(", ")}"


  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  holiday_hash.map do |season, holiday|
  holiday.map do |holidays, supplies|
    # binding.pry
    holidays if supplies.include? ("BBQ")




  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
end
  end.flatten.compact #flatten remove extra brackets and prints one long array of stings with commas included
                      #compact removes the nil values that would've been returned if not for compact
end
