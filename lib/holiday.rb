require 'pry'

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

def second_supply_for_fourth_of_july(holiday_hash)

  # return the second element in the 4th of July array
  holiday_hash.each do |season, hash|
    if season == :summer
      hash.each do |holiday, supply_array|
        if supply_array.length > 1
          return supply_array[1]
     end
    end
   end
  end
end
#holiday_hash[:summer][:fourth_of_july][1]

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash[:winter][:christmas] << supply
  holiday_hash[:winter][:new_years] << supply

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
  holiday_hash.each do |season, info|
    #season.to_s
    puts "#{season}:".capitalize!
      info.each do |holiday, supplies|

        if holiday.to_s.include?("_")
            string = holiday.to_s.tr!('_', ' ').split.map!(&:capitalize!).join(" ")
            puts "  #{string}: " + supplies.join(", ")
        elsif supplies.length > 1
            string = holiday.to_s.capitalize!
            puts "  #{string}: " + supplies.join(", ")
        else string = holiday.to_s.capitalize!
           puts "  #{string}: " + supplies.join

        end
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  array = []
  holiday_hash.each do |season, info|
    info.each do |holiday, supplies|
      if supplies.include?("BBQ")
        array << holiday
      end
   end
  end
  array
end
