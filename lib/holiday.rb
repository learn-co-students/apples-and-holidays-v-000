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

  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash.each do |season, hash|
    if season == :winter
      holiday_hash[:winter][:christmas]<<supply
      elsif season == :summer
        holiday_hash[:winter][:new_years]<<supply
    end
  end
end


  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash.each do |season, hash|
    if season == :spring
      holiday_hash[:spring][:memorial_day]<<supply
    end
  end
end

  # code here
  # remember to return the updated hash
def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash.each do |season, hash|
    # it appears we are adding a new holiday_name and supplY_array to each season
    holiday_hash[season][holiday_name] = supply_array
  end
end

  # return an array of all of the supplies that are used in the winter season
def all_winter_holiday_supplies(holiday_hash)
  new_array = Array.new
  holiday_hash.each do |season, hash|
    if season == :winter
      hash.each do |holiday, supplies_array|
        if holiday == :christmas || :new_years
          new_array << supplies_array
        end
      end
    end
  end
  new_array.flatten
end

  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  def all_supplies_in_holidays(holiday_hash)
    holiday_hash.each do|season, hash|
      upcase_season = season.to_s.capitalize!
        puts "#{upcase_season}:"
          hash.each do |holiday, supplies|
            split_holiday = holiday.to_s.split("_")
              array = split_holiday.collect do |split_array|
                #binding.pry
                 split_array.capitalize!
               end
                array_holiday_join = array.join(" ")
                supplies_join = supplies.join(", ")

                puts "  #{array_holiday_join}: #{supplies_join}"
          end
    end
  end

  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  def all_holidays_with_bbq(holiday_hash)
   results = []
  holiday_hash.collect do |season, holidays|
     holidays.select do |holiday, supplies|
      supplies.include?("BBQ")
     end.keys
  end.flatten
end
