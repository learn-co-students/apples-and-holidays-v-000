require 'pry'

def test_hash
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
end


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
  holiday_hash[:winter].each do |key, _|
    holiday_hash[:winter][key] << supply
  end
  holiday_hash
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day] << supply
  holiday_hash
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  all_supplies = []
  holiday_hash[:winter].each do |holiday, supplies|
    all_supplies += supplies
  end
  all_supplies
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  holiday_hash.each do |holiday, details|
    string = "#{holiday}:".slice(0, 1).capitalize + "#{holiday}:".slice(1..-1)
    puts string
    details.each do |festival, supplies|
      string = "#{festival}:".slice(0, 1).capitalize + "#{festival}:".slice(1..-1)
      ('a'..'z').to_a.each do |letter|
        string.gsub!(/_#{letter}/, " #{letter.capitalize}")
      end
      string = "  " + string
      supplies.each_with_index do |supply, i|
        if i == 0
          string += " #{supply}"
        else
          string += ", #{supply}"
        end
      end
      puts string
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  holiday_includes_bbq = []
  holiday_hash.each do |holiday, details|
    details.each do |festival, supplies|
      supplies.each do |supply|
        holiday_includes_bbq << festival if supply == "BBQ"
      end
    end
  end
  holiday_includes_bbq
end
