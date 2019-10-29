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
  holiday_hash[season][holiday_name] = supply_array #I only added the variable, if somone inputs a symbol that symbol will go where the variable is
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  # Returns all winter holiday supplies from the two array and combines them into one
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
  holiday_hash.each do |season, season_hash|
    #Season is :winter and season_hash are the key/value pairs for Christmas and New Years
    puts "#{season.to_s.capitalize!}:"
    season_hash.each do |holiday, supplies_array|
      #We're iterating over season_hash.
      #Holiday is Christmas and supplies_array is the array of supplies needed for each holiday
      puts "  #{holiday.to_s.split('_').map(&:capitalize).join(' ')}: " << supplies_array.join(", ")
      #use .split with ana argument to change new_years into new years
      #I convert a symbol (:new_years, to a string ("new_years"), I turn the string into an array (["new", "years"]),
      #I use map to control the return value after we iterate through the array returning a new array (["New Years"])
      #My syntax for the maps iterator is the ame as doing {|word|word.capitalize} it's just a shorter syntax
      #I convert new array into a string "New Years", I convert the supplies array into a string ("Party Hats") and push
      #it into the the New Years string and return them together.

    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  #I use .map to store the iterations in a new array
  #We iterate down three levels to find holidays that need BBQ supplies
  #We compact the supply array iteration to remove all of the nils
  #I flatten the holiday_hash iteration so the new array only contains the two values we want to return
  holiday_hash.map do |season, season_hash|
    season_hash.map do |holiday, supply_array|
      supply_array.map do |supply|
        if supply == "BBQ"
          holiday
        end #if statement
      end.compact #supply_array iteration
    end #season_hash iteration
  end.flatten #end of holiday_hash iteration
end #end of method

################  ANOTHER WAY TO SOLVE THE LAST TEST ######################
# I create a new array to push the holidays (that need BBQ supplies into).
# I iterate through three levels to find the hashes that have suppy BBQ
# I push the holiday (symbol) into my new array
# I return my new array after I'm done iterating through the hash


# bbq_supplies = []
# holiday_hash.each do |season, season_hash|
#   season_hash.each do |holiday, supply_array|
#     supply_array.each do |supply|
#       if supply == "BBQ"
#         bbq_supplies << holiday
#       end #if statement
#     end #supply_array iteration
#   end #season_hash iteration
# end #end of holiday_hash iteration
# return bbq_supplies
