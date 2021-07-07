require 'pry'

=begin
holiday_hash = {
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
=end


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
  holiday_hash.each do |season, holiday|
    holiday.each do |key, array|
      if key == :fourth_of_july
          array.each do |array_entry|
            if array_entry == array[1]
              return array_entry
            end
          end
      end
    end
  end
end


def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash.each do |season, holiday|
    if season == :winter
      holiday.each do |key, array|
        array << supply
      end
    end
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash.each do |season, holiday|
    holiday.each do |array, indexes|
      if array == :memorial_day
        indexes << supply
      end
    end
  end
end


def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash.each do |key, value|
    if key == season
      holiday_hash[season][holiday_name] = supply_array
    end
  end

end


def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  new_array = []
  holiday_hash.each do |season, holiday|
    if season == :winter
      holiday.each do |name, array|
        array.each do |index|
          new_array << index
        end
      end
    end
  end
  new_array
end
#all_winter_holiday_supplies(holiday_hash)

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  holiday_hash.each do |season, holiday|
    puts season.to_s.capitalize + ":"
      holiday.each do |name, array|
        puts "  #{name.to_s.split("_").collect do |word|
                   word.capitalize
                 end.join(" ")}: #{array.to_s.delete("[]").gsub(%r/"/, "")}"
      end
  end
end



def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  final_array = []
  holiday_hash.each do |season, holiday|
    holiday.each do |holiday, array|
      if array.include?("BBQ")
        final_array << holiday
      end
    end
  end
  final_array
end
#all_holidays_with_bbq(holiday_hash)
