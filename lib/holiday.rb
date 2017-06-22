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
  holiday_supplies[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter].each do |season, supplies|
    supplies << supply
  end
  holiday_hash
end

# holiday_hash is identical to the one above
# add the second argument, which is a supply, to BOTH the
# Christmas AND the New Year's arrays

def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply
  # add the second argument to the memorial day array

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # remember to return the updated hash
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  holiday_hash[:winter].values.flatten

end
#["new", "year"]
def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holiday|
    puts "#{season.capitalize}:"
    holiday.each do |name, supplies|
      names = name.to_s
      if names.include? "_"
          names = names.split("_")
          names = names.collect {|word| word.capitalize}
          names = names.join(" ")
          puts "  #{names}: #{supplies.join(", ")}"
      else
        puts "  #{names.capitalize}: #{supplies.join(", ")}"
      end
    end
  end
end
# iterate through holiday_hash and print items such that your readout resembles:
# Winter:
#   Christmas: Lights, Wreath
#   New Years: Party Hats
# Summer:
#   Fourth Of July: Fireworks, BBQ
# etc.
def all_holidays_with_bbq(holiday_hash)
  answer = holiday_hash.map do|season, holidays|
    holidays.map do |name, supplies|
      if supplies.include?("BBQ")
         name
      end
    end
  end
   answer = answer.flatten.compact
   answer
end

# OR
#def all_holidays_with_bbq(holiday_hash)
#   answer = []
#   holiday_hash.each do|season, holidays|
#     holidays.map do |name, supplies|
#       supplies.include?("BBQ")
#         answer << name
#       end
#     end
#answer
# end
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
