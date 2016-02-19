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
  holiday_hash[:winter][:christmas]<< supply
  holiday_hash[:winter][:new_years]<< supply
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day]<<supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  new_day = {season => {holiday_name => supply_array}}
  holiday_hash.merge!(new_day)

end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  supplies = []
  supplies<<holiday_hash[:winter].values
  supplies.flatten


end

# def all_supplies_in_holidays(holiday_hash)

# holiday_hash.each do |season, holiday|
#   puts season.to_s.capitalize! + ":"
#   # binding.pry

#   mod_hol=[]
#   mod_hol.push holiday.to_s.split(/\W+/)

#   puts mod_hol.flatten!



#   # # mod_hol.map do |h|
#   # #   # binding.pry
#   # #   h.each do |word|
#   # #     puts word.capitalize!
#     # end

#     # end
#   end
# end


def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holiday|
    puts "#{season.to_s.capitalize}:"

    holiday.collect do |holiday, supply|
      mod_hol = holiday.to_s.split("_")

      mod_hol.collect {|name| name.capitalize!}.join(" ")

      puts "  #{mod_hol.join(" ")}: #{supply.join(", ")}"
      #   puts supply
      # end


    end
  end
end

def all_holidays_with_bbq(holiday_hash)

    holiday_hash.map do |season, holiday|

      holiday.map do |supply|
        holiday_array =[]

      if holiday.values.map do |item|
        # binding.pry
        if item.include?("BBQ")
        holiday_array.push holiday.keys

         end
       holiday_array
        end
      end
    end
  end
end




