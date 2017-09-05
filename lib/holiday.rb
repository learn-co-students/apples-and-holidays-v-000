require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  #  {
  #    :winter => {
  #      :christmas => ["Lights", "Wreath"],
  #      :new_years => ["Party Hats"]
  #    },
  #    :summer => {
  #      :fourth_of_july => ["Fireworks", "BBQ"]
  #    },
  #    :fall => {
  #      :thanksgiving => ["Turkey"]
  #    },
  #    :spring => {
  #      :memorial_day => ["BBQ"]
  #    }
  #  }
  # return the second element in the 4th of July array

  fourth = holiday_hash[:summer][:fourth_of_july]
  fourth[1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays

  winter = holiday_hash[:winter]
  winter[:christmas] << supply
  winter[:new_years] << supply

end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  spring = holiday_hash[:spring]
  spring[:memorial_day] << supply


end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash

  #season = holiday_hash[season]
  #season[holiday_name] = supply_array
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
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


  holiday_hash.each do |season, holidays| #winter, {xmas, new_years}

    puts "#{season.capitalize}:"

    holidays.each do |holiday, attributes| #new_years, [Lights, etc]
      cur_season = holiday_hash[season]
      attr_str = cur_season[holiday].join(", ") # holiday_hash[:winter][:christmas].values

      updated_name = holiday.to_s.split("_")

      updated_name.collect! {|word| word.capitalize}
      puts "  #{updated_name.join(" ")}: #{attr_str}"

      #updated_name.collect! do |word|
      #  word.capitalize!
      #end

    end
  end



end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  bbq_holiday = []
  holiday_hash.each do |season, holiday| #winter, (xmas, new_years)

    holiday.each do |holidays ,item|
      if item.include?("BBQ")
        bbq_holiday << holidays
      end
    end
  end
  bbq_holiday
end
