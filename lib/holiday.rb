require 'pry'

# first attempt 6/18/17
# def second_supply_for_fourth_of_july(holiday_hash)
#   # given that holiday_hash looks like this:
#   # {
#   #   :winter => {
#   #     :christmas => ["Lights", "Wreath"],
#   #     :new_years => ["Party Hats"]
#   #   },
#   #   :summer => {
#   #     :fourth_of_july => ["Fireworks", "BBQ"]
#   #   },
#   #   :fall => {
#   #     :thanksgiving => ["Turkey"]
#   #   },
#   #   :spring => {
#   #     :memorial_day => ["BBQ"]
#   #   }
#   # }
#   holiday_supplies[:summer][:fourth_of_july][1]
# end
#
# def add_supply_to_winter_holidays(holiday_hash, supply)
#   holiday_hash.each do |season, data|
#     if season == :winter
#       data.each do |holiday, supplies|
#         supplies << supply
#       end
#     end
#   end
# end
#
#
# def add_supply_to_memorial_day(holiday_hash, supply)
#   holiday_hash[:spring][:memorial_day] << supply
# end
#
# def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
#   holiday_hash[season][holiday_name] = supply_array
#
# end
#
# def all_winter_holiday_supplies(holiday_hash)
#   holiday_hash[:winter].values.flatten
# end
#
# def all_supplies_in_holidays(holiday_hash)
#   # iterate through holiday_hash and print items such that your readout resembles:
#   # Winter:
#   #   Christmas: Lights, Wreath
#   #   New Years: Party Hats
#   # Summer:
#   #   Fourth Of July: Fireworks, BBQ
#   # etc.
#   #convert symbols to strings with .to_s
#   #split words and then capitalize with .capitalize! and rejoin
#   holiday_hash.each do |season, data|
#     season = season.to_s.capitalize!
#     puts "#{season}:"
#     data.each do |holiday, supplies|
#       holiday = holiday.to_s.split("_").collect {|word| word.capitalize!}.join(" ")
#       supplies = supplies.length >= 2 ? supplies.join(", ") : supplies.join("")
#       puts "  #{holiday}: #{supplies}"
#     end
#   end
# end
#
#
# def all_holidays_with_bbq(holiday_hash)
#   res = []
#   holiday_hash.each do |season, data|
#     data.each do |holiday, supplies|
#       if supplies.include?("BBQ")
#         res.push(holiday)
#       end
#     end
#   end
#   res
# end

# second attempt 7/3/17
# holiday_supplies = {
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
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash.each do |season, days|
    if season == :winter
      days.collect do |holiday, supplies|
        supplies << supply
      end
    end
  end
end

def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday, supplies)
  holiday_hash[season][holiday] = supplies
end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, days|
    puts "#{season.to_s.capitalize!}:"
    days.each do |holiday, supplies|
      holiday = holiday.to_s.split("_").collect {|word| word.capitalize!}.join(" ")
      puts "  #{holiday}: #{supplies.join(", ")}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  result = []
  holiday_hash.each do |season, days|
    days.each do |holiday, supplies|
      result.push(holiday) if supplies.include?("BBQ")
    end
  end
  result
end
