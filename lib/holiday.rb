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
  # holiday_hash[:winter][:christmas].push(supply)
  # holiday_hash[:winter][:new_years].push(supply)

  holiday_hash.each do |season, supply_hash|
    if season == :winter
      supply_hash.each do |holiday, supply_array|
        supply_array.push(supply)
      end
    end
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash.each do |season, supply_hash|
    if season == :spring
      supply_hash.each do |holiday, supply_array|
        supply_array.push(supply)
      end
    end
  end

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash.each do |ssn, supply_hash|
    if ssn == season
      holiday_hash[ssn] = {holiday_name => supply_array}
    end
  end
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
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

  holiday_hash.collect do |season, supply_hash|
    puts "#{season.to_s.capitalize!}:"
    supply_hash.collect do |holiday, supply|
      if holiday == :new_years || holiday == :fourth_of_july || holiday == :memorial_day
        hol_letter_array = holiday.to_s.split(//)
        hol_letter_array.collect.with_index do |x, index|
          if x == "_"
            hol_letter_array[index] = " "
          end
        end
        l2 = hol_letter_array.join("")
        l3 = l2.split(/ /).collect {|word| word.capitalize!}
        puts "  #{l3.join(" ")}: #{supply.join(", ")}"
      elsif holiday == :christmas || holiday == :thanksgiving
        puts "  #{holiday.to_s.capitalize!}: #{supply.join(", ")}"
      end

    end
  end
end



def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  array = []
  holiday_hash.each do |season, supply_hash|
    supply_hash.each do |holiday, supply|
    if supply.include?("BBQ")
      array << holiday
    end
    end
  end
  array
end
