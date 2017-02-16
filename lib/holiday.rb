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
return holiday_hash[:summer][:fourth_of_july][1]

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
  #convert holiday_name into a symbol
  holiday_hash[season] = {holiday_name.to_sym => supply_array}
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  output = []
  holiday_hash.each do |season,season_data|
    season_data.each do |holiday, supply_data|
      supply_data.each do |item|
        if season == :winter
          output << item
        end
      end
    end
 end
 output
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  output = []

   holiday_hash.each do |season,season_data|
     season_string = season.to_s #successfully converts symbol to string
     output << "#{season_string.capitalize}:"
     season_data.each do |holiday, supply_data|
       holiday_string = holiday.to_s
       holiday_underscore_removed = holiday_string.gsub(/_/,' ')
       item_array = []
       supply_data.each do |item|
         item_array << item
       end
       split_array = item_array.join(", ")
       output << "  #{holiday_underscore_removed.gsub(/[A-Za-z']+/,&:capitalize)}: #{split_array}"
     end
  end
  puts output.join("\n") << "\n"
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  output = []
  holiday_hash.each do |season,season_data|
    season_data.each do |holiday, decoration_data|
      decoration_data.each do |item|
        if item == "BBQ"
          output << holiday
        end
      end
    end
 end
 output
end
