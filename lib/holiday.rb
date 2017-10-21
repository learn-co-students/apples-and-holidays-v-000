require 'pry'

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
  holiday_hash.each do |season, season_holiday_hash|
    if season == :winter
      season_holiday_hash.each do |holiday, supplies|
        supplies << supply
end
end
end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash.each do |season, season_holiday_hash|
    if season == :spring
      season_holiday_hash.each do |holiday, supplies|
        if holiday == :memorial_day
        supplies << supply
end
end
end
end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season][holiday_name] = supply_array
  return holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
 holiday_hash[:winter].values.flatten
end

#def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
#  holiday_hash.each do |season, season_holiday_hash|
#    season_array = season.to_s.split(" ")
#    season_array.each do |word|
#      word.capitalize!
#      season_string = season_array.join(" ")
#      puts "#{season_string}:"

#      season_holiday_hash.each do |holiday, supplies|

#        holiday_array = []
#        holiday_array << holiday

#        holiday_array.each do |holiday_word|

#          holiday_array_2 = holiday_word.to_s.split("_")
#           holiday_array_2.each do |broken_word|
#             holiday_string = ""
#             holiday_string << broken_word.capitalize!.join(" ")
#
#          holiday_string << ":"
#              supply_string = supplies.join(", ")
#                puts "  #{holiday_string} #{supply_string}"
#              end
#            end
#          end
#        end
#      end
#    end




def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  new_array = []
  holiday_hash.each do |season, season_holiday_hash|
    season_holiday_hash.each do |holiday, supplies|
      if supplies.include?("BBQ")
        new_array << holiday
      end
    end
  end
  return new_array
end

#def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
#  holiday_hash.each do |season, season_holiday_hash|
#    season_array = season.to_s.split(" ")
#    season_array.each do |word|
#      word.capitalize!
#      season_string = season_array.join(" ")
#      puts "#{season_string}:"
#        season_holiday_hash.each do |holiday, supplies|
#        season_name_array = season_holiday_hash.keys
#        season_name_array.each do |season_name|
#
#          season_display = season_name.to_s.split("_")
#            season_display.each do |separated|
#                values = separated.capitalize!
#              holiday_string = ""
#              holiday_string << values
#              holiday_string << ":"
#              supply_string = supplies.join(", ")
#              puts "  #{holiday_string} #{supply_string}"
#            end
#          end
#        end
#      end
#    end
#  end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  holiday_hash.each do |season, season_holiday_hash|
    season_array = season.to_s.split(" ")
    season_array.each do |word|
      word.capitalize!
      season_string = season_array.join(" ")
      puts "#{season_string}:"
      season_holiday_hash.each do |holiday, supplies|
         holiday_array = holiday.to_s.split("_")
         holiday_array.each do |word|

           word.capitalize!


         end
         holiday_string = holiday_array.join(" ")
         holiday_string << ":"
         supply_string = supplies.join(", ")
          puts "  #{holiday_string} #{supply_string}"
       end
     end
   end
end
