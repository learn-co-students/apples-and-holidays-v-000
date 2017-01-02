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
  holiday_supplies[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays

   holiday_hash.each do |season, holidays|
      if season == :winter
         holidays.each do |holiday, must_have|
            must_have << supply
         end
      end
   end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array

   holiday_hash.each do |season, holidays|
      holidays.each do |holiday, must_have|
         if holiday == :memorial_day
            must_have << supply
         end
      end
   end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
   holiday_supplies[season][holiday_name] = supply_array
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  holiday_supplies = []

  holiday_hash.each do |season, holidays|
     if season == :winter
        holidays.each do |holiday, must_have|
            must_have.each do |item|
               holiday_supplies << item
            end
        end
     end
  end

  holiday_supplies
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.

  holiday_hash.each do |season, holidays|
      capitalized_season = season.to_s.capitalize

      puts "#{capitalized_season}:"

      holidays.each do |holiday, must_have|
         holiday_name = holiday.to_s.split("_")

         holiday_name.map { |word| word.capitalize! }#.join(" ")

         # holiday_name.each do |word|
         #    word.capitalize!
         #    # binding.pry
         # end

         # holiday_name.join.to_s
         # binding.pry


         puts "  #{holiday_name.join(" ")}: #{must_have.join(", ")}"

         # counter = 0
         # supplies_length = must_have.length
         #
         # must_have.each do |item|
         #    counter += 1
         #
         #    if counter == 1
         #       print "#{item}"
         #    elsif counter >= 2
         #       print ", #{item}"
         #    end
         #
         #    if counter == supplies_length
         #       print "\n"
         #    end
         # end
      end

   end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  bbq_holidays = []

  holiday_hash.each do |season, holidays|
     holidays.each do |holiday, must_have|
        must_have.each do |item|
           if item == "BBQ"
              bbq_holidays << holiday
           end
        end
     end
  end

  bbq_holidays
end
