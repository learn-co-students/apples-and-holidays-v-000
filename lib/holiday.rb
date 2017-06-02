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




  holiday_hash.each do |key, value|
    if key == :summer
      value.each do |name, data|
        return data[1]
      end
    end
  end
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash.each do |name, data|
    if name == :winter
      data.each do |key, value|
        if key == :christmas
          value << supply
        end
        if key == :new_years
          value << supply
        end
      end
    end
  end


end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash.each do |name, data|
    if name == :spring
      data.each do |key, value|
        value << supply
      end
    end
  end

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash.each do |name, data|
    if name == season
      holiday_hash[name][holiday_name] = supply_array
    end
  end
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  ary = []# return an array of all of the supplies that are used in the winter season
  holiday_hash.each do |key, value|

    if key == :winter
      value.each do |name, data|
        ary << data
      end
    end
  end
  ary.flatten
end

def all_supplies_in_holidays(holiday_hash)
  # holiday_hash.each do |season, holidays|
  #   puts "#{season.to_s.capitalize}:"
  #
  #   holidays.each do |holiday, supplies|
  #     capitalized = holiday.to_s.split('_').each{|word| word.capitalize!}.join(" ")
  #     puts "  #{capitalized}: #{supplies.join(', ')}"
  #   end

holiday_hash.each do |season, holidays|
  puts "#{season.to_s.capitalize}:"
  holidays.each do |holiday, supplies|
    capitalized = holiday.to_s.split('_').each{|word| word.capitalize!}.join(" ")
    puts "  #{capitalized}: #{supplies.join(", ")}"
  end
end
  # finish = ""
  # final = ""
  # holiday_hash.each do |key, value|
  #   string = key.to_s
  #  puts "#{string.capitalize}:"
  #
  #   value.each do |name, data|
  #     final = name.to_s
  #     if final.include?("_")
  #       array = final.split("_")
  #       counter = 0
  #       array.each do |index|
  #         array[counter].capitalize!
  #         counter += 1
  #       end
  #       final = array.join(" ")
  #     else
  #        final.capitalize!
  #     end
  #     finish += "  #{final}: "
  #       if data.length > 1
  #         counter = 0
  #         data.each do |index|
  #           if counter == data.length - 1
  #             finish += "#{index}"
  #
  #           else
  #             finish += "#{index}, "
  #           end
  #           counter += 1
  #         end
  #       else
  #         finish += "#{data[0]}"
  #       end
  #         #binding.pry
  #     puts finish



    #end

  #end

end

  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.



def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  array = []
  holiday_hash.each do |season, holidays|
    holidays.each do |holiday, supplies|
      supplies.each do |word|
        if word == "BBQ"
          array << holiday
        end
      end
    end
  end
  return array
end
