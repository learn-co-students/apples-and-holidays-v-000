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
  new_s = ""
  holiday_hash.each do |season, holidays|
    holidays.each do |holiday, needed|
      if holiday == :fourth_of_july
        new_s = needed[1]
      end
    end
  end
  new_s
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays

  holiday_hash.each do |season, holidays|
    holidays.each do |holiday, needed|
      if season == :winter
        needed << supply
      end
    end
  end

end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array

  holiday_hash.each do |season, holidays|
    holidays.each do |holiday, needed|
      if season == :spring
        needed << supply
      end
    end
  end

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash.each do |seasons, holidays|
    if seasons == season
      #binding.pry
      holidays[holiday_name]=supply_array
    end
  end

end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  new_a = Array.new
  holiday_hash.each do |season, holidays|
    holidays.each do |holiday, needed|
      if season == :winter
        needed.each {|supply| new_a << supply}
       end
    end
  end
  new_a
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  new_a = Array.new
  holiday_hash.each do |season, holidays|
    puts "#{season.to_s.capitalize}:"
    holidays.each do |holiday, needed|

        needed.each do |supply|
          new_a<< "#{supply}"
        #binding.pry
        end
        puts "  #{holiday.to_s.capitalize}: #{new_a.join(", ")}"
        new_a = []
    end
  end



end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  new_a = Array.new
  holiday_hash.each do |season, holidays|
    holidays.each do |holiday, needed|
      needed.each { |supply| new_a << holiday if supply == "BBQ" }
    end
  end
  new_a
end







