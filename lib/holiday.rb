require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
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
  holiday_hash[season][holiday_name] = supply_array
  # remember to return the updated hash

end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  supplies = []
  holiday_hash.each do |key, value|
    value.each {|key, value| supplies << value } if key == :winter
  end
  supplies.flatten
end

def all_supplies_in_holidays(holiday_hash)
  seasons = holiday_hash.keys
  holidays = []
  supplies = []

  holiday_hash.each do |key, value|
    value.each do|key, value|
      holidays << key.to_s.gsub(/_/, ' ')
      supplies << value
    end
  end

  seasons.map! {|season| season.to_s.capitalize!}

  holidays.map! do |holiday|
    holiday = holiday.to_s.split(" ")
    holiday.map! {|word| word.capitalize!}.join(" ")
  end

  puts "#{seasons[0]}:"
  puts  "  #{holidays[0]}: #{supplies[0].join(", ")}"
  puts  "  #{holidays[1]}: #{supplies[1].join(", ")}"
  puts "#{seasons[1]}:"
  puts  "  #{holidays[2]}: #{supplies[2].join(", ")}"
  puts "#{seasons[2]}:"
  puts  "  #{holidays[3]}: #{supplies[3].join(", ")}"
  puts "#{seasons[3]}:"
  puts  "  #{holidays[4]}: #{supplies[4].join(", ")}"

end

def all_holidays_with_bbq(holiday_hash)
  has_bbq = []
  holiday_hash.each do |key, value|
      value.each do |key, value|
        has_bbq << key if value.include?("BBQ")
      end
  end
  has_bbq.flatten
end


holiday_hash =
{
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
