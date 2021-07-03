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

    holiday_hash.each do |season, data|
      if season == :winter
    data.each do |holiday, items|
        items << supply
      end
    end
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)

  holiday_hash.each do |season, data|
      data.each do |holiday, items|
    if holiday == :memorial_day
      items << supply
    end
    holiday_hash
  end
  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)

    new_holiday = holiday_name
    new_holiday_supplies = supply_array
    season_for_add = season

    holiday_hash.each do |season, holidays_hash|
      if season == season_for_add
        holiday_hash[season][new_holiday] = new_holiday_supplies
      end
    end
    holiday_hash
  end



  # code here
  # remember to return the updated hash


def all_winter_holiday_supplies(holiday_hash)

  holiday_hash[:winter].collect do |holiday, supply|
    supply
  end.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, data|
      puts "#{season.capitalize}:"
      data.each do |holiday, supply|
        puts "  #{holiday.to_s.split("_").collect {|word| word.capitalize!}.join(" ")}: #{supply.join(", ")}"
      end
    end
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.

end

def all_holidays_with_bbq(holiday_hash)
  array = []
  holiday_hash.each do |season, data|
    data.each do |holiday, supply|
      supply.collect do |item|
        if item == "BBQ"
          array << holiday
        end
      end
    end
  end
  array

  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"

end
