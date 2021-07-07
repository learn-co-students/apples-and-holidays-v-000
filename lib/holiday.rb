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

  holiday_hash[:summer][:fourth_of_july][1]

  #return the second element in the 4th of July array
  # holiday_hash.each do |season, holidays|
  #   holidays.each do |holiday, supply|
     #if holiday == :fourth_of_july
     #binding.pry
# end
# end
end
# end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash.each do |season, holidays|
     holidays.each do |holiday, supplies|
supplies << supply

end
end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash.each do |season, holidays|
     holidays.each do |holiday, supplies|
supplies << supply

end
end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season] [holiday_name] = supply_array


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
  holiday_hash.each do |season, holidays|
    puts "#{ season.capitalize }:"

    holidays.each do |holiday, supplies|

      holiday_split = holiday.to_s
      x = holiday_split.split( "_" )
      x = x.map{ |word| word.capitalize!}
        #x.join(" ")

  #binding.pry
    puts "  #{ x.join(" ") }: #{ supplies.collect { |supply| supply }.join(", ") }"
      # supply_string = supplies
      # supply_string.each do |z|
      #   z.to_s.capitalize!


        # season_string = season
        # split_season_string = season_string.to_s.split
        # split_season_string.each do |x|
        #   x.capitalize!
        #   split_season_string.join

# binding.pry
        # puts "#{split_season_string}: #{supply_string}"

      #   end

    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  piggy = []
  holiday_names = holiday_hash.map do | season, holidays |
    holidays.map do | holiday, supplies |

      piggy << holiday if supplies.include?("BBQ")
    end
  end

  piggy
end
