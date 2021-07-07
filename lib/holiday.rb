require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
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
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash[:winter].each do |holiday,itemarray|
    itemarray << supply
  end

end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day] << supply


end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season][holiday_name] = supply_array
  return holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten
  # return an array of all of the supplies that are used in the winter season

end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holidaysanditems|
    puts "#{season.to_s.capitalize}:"
      holidaysanditems.each do |holiday, items|

        splitholiday= holiday.to_s.split("_")
        splitholiday.each do |onewordofholiday|
          onewordofholiday.capitalize!
        end
          splitholiday.join(",")
          puts "  #{splitholiday.join(" ")}: #{items.join(", ")}"

      end
    end
  end




        ###puts "#{holiday.to_s.capitalize}:


  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.


def all_holidays_with_bbq(holiday_hash)
  newarray=[]
  holiday_hash.each do |season,holidaysanditems|
    holidaysanditems.each do |holiday, items|
      if items.include?("BBQ")
        newarray << holiday
      end
    end
  end
  return newarray
end


  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
