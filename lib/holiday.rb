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

=begin
season = :fall
holiday_name = :columbus_day
supply_array = ["Flags", "Parade Floats", "Italian Food"]
=end

# return the second element in the 4th of July array
def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

# add the second argument, which is a supply, to BOTH Christmas AND the New Year's arrays
def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter][:christmas] << "Balloons"
  holiday_hash[:winter][:new_years] << "Balloons"
end

# add the second argument to the memorial day array
def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end

# return an array of all of the supplies that are used in the winter season
def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten
end

# iterate through holiday_hash and print items such that your readout resembles:
# Winter:
#   Christmas: Lights, Wreath
#   New Years: Party Hats
# Summer:
#   Fourth Of July: Fireworks, BBQ
# etc.
def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holiday|
    puts season.to_s.capitalize + ":"
    holiday.each do |name, supply|
      name_split = name.to_s.split("_")
      name_split.collect {|x| x.capitalize!}
      supplies = String.new
      supply.each do |x|
        supplies << x
        supplies << ", " if x != supply[-1]
      end
      puts "  #{name_split.join(" ")}: #{supplies}".chomp
    end
  end
end

# return an array of holiday names (as symbols) where supply lists include the string "BBQ"
def all_holidays_with_bbq(holiday_hash)
  holidays_with_bbqs = Array.new
  holiday_hash.each do |season, holiday|
    holiday.each do |name, supply|
      holidays_with_bbqs << name if supply.any? {|x| x == "BBQ"}
    end
  end
  holidays_with_bbqs
end
