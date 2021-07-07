require 'pry'

# holiday_hash = {
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
  # given that

  # return the second element in the 4th of July array

  answer = holiday_hash[:summer][:fourth_of_july]
  answer[1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)

  holiday_hash.each do |season, season_details_hash| # key/value for outside hash
    if season == :winter
    season_details_hash.each do |holiday, holiday_details_array| # key/value for inside hash
        holiday_details_array << supply
      end
    end # end of first .each method
  end # end of second .each method
  holiday_hash # return array
end


def add_supply_to_memorial_day(holiday_hash, supply)

  holiday_hash.each do |season, season_details_hash| # key/value for outside hash
    season_details_hash.each do |holiday, holiday_details_array| # key/value for inside hash
      if holiday == :memorial_day
      holiday_details_array << supply
      end
    end # end of first .each method
  end # end of second .each method
  holiday_hash # return array

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season] = {holiday_name => supply_array}
end

def all_winter_holiday_supplies(holiday_hash)
  answer = []
    holiday_hash.each do |season, season_details_hash| # key/value for outside hash
      if season == :winter
        answer << season_details_hash.values
      end #end of if-statement
    end# end of .each method
  return answer.flatten
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  holiday_hash.each do |season, season_details_hash|
    season_string = season.to_s
    puts "#{season_string.capitalize}:"
      season_details_hash.each do |holiday, holiday_details_array|
            holiday_string = holiday.to_s.gsub("_", " ")
            holiday_arr = holiday_string.split(' ')
              holiday_arr.each do |word|
                word.capitalize!
              end
            holiday_join = holiday_arr.join(' ')
            puts "  #{holiday_join}: #{holiday_details_array.join(", ")}"

  end
end

end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  answer = []
  holiday_hash.each do |season, season_details_hash| # key/value for outside hash
    season_details_hash.each do |holiday, holiday_details_array| # key/value for inside hash
      if holiday_details_array.include? "BBQ"
        answer << holiday
      end
    end # end of first .each method
  end # end of second .each method
  answer
end
