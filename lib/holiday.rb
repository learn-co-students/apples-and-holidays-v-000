require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash.each do |season, data|
    if season == :winter
      data.each do |holiday, list|
        list << supply
      end
    end
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash.each do |season, data|
    if season == :spring
      data.each do |holiday, list|
        list << supply
      end
    end
  end

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season] = {holiday_name => supply_array}
  holiday_hash

end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  holiday_hash[:winter].values.flatten

end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, data|
    puts "#{season.to_s.capitalize!}:"
    data.each do |holiday, items|
      puts "  #{holiday.to_s.split("_").each {|word| word.capitalize!}.join(" ")}: #{items.join(", ")}"
    end
  end
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.

end

def all_holidays_with_bbq(holiday_hash)
  bbq_holidays = []
  holiday_hash.collect do |seasons, holidays|
    holidays.collect do |holiday, supplies|
      if supplies.include?("BBQ")
        bbq_holidays << holiday
      end
    end
  end
  bbq_holidays
end

#### -------solution code for all_holidays_with_bbq:--------####
# def all_holidays_with_bbq(holiday_hash)
#   holiday_hash.collect do |seasons, holidays|
#     holidays.collect do |holiday, supplies|
#       holiday if supplies.include?("BBQ")
#     end
#   end.flatten.compact #These methods are operating on the return value which looks like this:
#   #[[nil, nil], [:fourth_of_july], [nil], [:memorial_day]]
#   #.flatten turns it into one array; .compact removes the nil elements
# end

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
