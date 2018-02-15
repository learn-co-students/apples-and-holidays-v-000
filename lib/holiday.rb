require 'pry'
#
# holiday_hash =
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
def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash.each do |season, holidays|
    holidays.each do |holiday, supplies|
      supplies << supply
    end
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
holiday_hash[season][holiday_name] = supply_array
holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
all_supply = []
  holiday_hash.each do |season, holiday|
    all_supply << holiday.values
  end
    all_supply.join
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holidays|
        puts "#{season.capitalize}:"
    holidays.each do |holiday, supplies|
      if holiday.to_s.include?("_")
        puts "  #{holiday.to_s.split('_').collect{|w| w.capitalize}.join(' ')}: #{supplies.join(", ")}"
      else
        puts "  #{holiday.to_s.capitalize}: #{supplies.join(", ")}"
      end
    end
  end
end


# puts "#{season.capitalize}:"
# puts "  #{holiday_array}"
# puts "#{holiday_array}"

# iterate through holiday_hash and print items such that your readout resembles:
# Winter:
#   Christmas: Lights, Wreath
#   New Years: Party Hats
# Summer:
#   Fourth Of July: Fireworks, BBQ
# etc.


def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  bbq_holidays = []
  holiday_hash.each do |season, holiday_array|
    holiday_array.each do |holiday, list|
      if list.include?("BBQ")
        bbq_holidays << holiday
      end
    end
  end
  bbq_holidays
end
