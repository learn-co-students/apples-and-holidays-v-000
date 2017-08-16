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
  # return the second element in the 4th of July array
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
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
  holiday_hash[:winter][:christmas] << "Balloons"# add the second argument, which is a supply, to BOTH the
  holiday_hash[:winter][:new_years] << "Balloons"# Christmas AND the New Year's arrays

end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
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
  # holiday_hash [:spring][:memorial_day] = []
  holiday_hash [:spring][:memorial_day] << supply# add the second argument to the memorial day array
  holiday_hash

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
holiday_hash[season][holiday_name] = supply_array

  holiday_hash# remember to return the updated hash

end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  #while the season = winter, return all supplies for that season
  holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  holiday_hash.each do |season, holidays| # season = winter, holidays = [{'memorial_day': 'bbq'},{ 'labor_day': 'bacon'}]
  puts "#{season.capitalize}:" # Winter
    holidays.each do |holiday, supplies| #{memorial_day: 'bbq'} supplies = memorial_day
      puts "  #{holiday.to_s.split('_').map {|word| word.capitalize}.join(" ")}: #{supplies.join(", ")}" # holiday_to_s.split('_') = ['new', 'year']
    end
  end
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
  holiday_hash.map do |season, holidays|
    holidays.map do |holiday, supplies|
      holiday if supplies.include?("BBQ")
    end
  end.flatten.compact!
end
