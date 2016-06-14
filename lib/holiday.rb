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

  fourth_of_july_item_1 = holiday_hash[:summer][:fourth_of_july][1]
   return fourth_of_july_item_1
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  add_supplies_to_winter_holidays = holiday_hash[:winter].values.collect {|holiday| holiday << supply}
  return add_supplies_to_winter_holidays
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  add_supply_to_memorial_day = holiday_hash[:spring][:memorial_day] << supply
  return add_supply_to_memorial_day

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  new_holiday = holiday_hash[season] = {holiday_name => supply_array}
  return new_holiday
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  winter_supplies = holiday_hash[:winter].values.flatten
  return winter_supplies
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  all_supplies_formatted = holiday_hash.each do |season, holidays|
    season_formatted = season.to_s.capitalize
    puts "#{season_formatted}:"
    holidays.each do |holiday_name, supplies|
      holiday_name_split = holiday_name.to_s.split('_')
      holiday_name_formatted = holiday_name_split.map {|word| word.capitalize}.join(' ')
      supplies_formatted = supplies.join(', ')
      puts "  #{holiday_name_formatted}: #{supplies_formatted}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  contains_bbq = []
  holiday_hash.each do |season, holidays|
    holidays.each do |holiday, supplies|
      if supplies.include?("BBQ")
        contains_bbq << holiday
      end
    end
  end
  return contains_bbq
end
