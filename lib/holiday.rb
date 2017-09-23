require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_supplies[:summer][:fourth_of_july][1]
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
#   return the second element in the 4th of July array
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter].each do |holiday, supplies|
    supplies << supply
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  # remember to return the updated hash
  holiday_hash
end

# I don't understand why this isn't instead: [:season][:holiday_name]
def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  holiday_supplies[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
      holiday_hash.each do |season, holiday| # iterates through array
       puts "#{season.to_s.capitalize}:" # capitalizes season
        holiday.each do |holiday, supplies|
          holiday_name = holiday.to_s.split("_")
          holiday_name.each do |word| word.capitalize!
          end
          puts "  " + holiday_name.join(" ") + ": " + supplies.join(", ")
        end
      end
  end

# Season:
#   Holiday: Supplies, supplies

#   holiday_supplies.each do |season, holiday|
#     puts "#{season.capitalize}:"
#     # binding.pry
#     holiday.each do |holiday, supplies|
#     holiday_array = holiday.to_s.split(_)
#     holiday_array.each do
#     |w| w.capitalize!
#     new_array = holiday-array.join(" ")
#     puts "  #{holiday_array}" + ": " + "#{supplies.join(, )}"
#     #{supplies.join(", ") }"
#     end
#
#   end
# end
# new_array
# end

def all_holidays_with_bbq(holiday_hash)
  array = []
  holiday_hash.each do |season, holidays|
    holidays.each do |holiday, supplies|
      array << holiday if supplies.include?("BBQ")
      end
    end

  array
end

  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
