require 'pry'

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

def second_supply_for_fourth_of_july(holiday_hash)
  # return the second element in the 4th of July array
  holiday_hash.each do |season, holidays|
    if season == :summer
      holidays.each do |holiday, items|
        if holiday == :fourth_of_july
          return items[1]
        end
      end
    end
  end
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash.each do |season, holidays|
    if season == :winter
      holidays.each do |holiday, items|
        items << supply
      end
    end
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash.each do |season, holidays|
    if season == :spring
      holidays.each do |holiday, items|
        if holiday == :memorial_day
          items << supply
        end
      end
    end
  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season] = {holiday_name => supply_array}
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  final_array = []
  holiday_hash.each do |season, holidays|
    if season = :winter
      holidays.each do |holiday, items|
        items.each do |item|
          final_array << item
        end
      end
    end
  end
  final_array
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # Fall:
  #   Thanksgiving: Turkey
  # Spring:
  #   Memorial Day: BBQ
  final_string = ""
  holiday_hash.each do |season, holidays|
    final_string << "#{season.to_s.capitalize}:\n"
    holidays.each do |holiday, items|
      final_string << "  #{holiday.to_s.split('_').collect {|word| word.capitalize!}.join(' ')}: "
      items.each do |item|
        if item == items[0] && items.size > 1
          final_string << "#{item}, "
        else
          final_string << "#{item}\n"
        end
      end
    end
  end
  puts final_string
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  final_array = []
  holiday_hash.each do |season, holidays|
    holidays.each do |holiday, items|
      if items.include?("BBQ")
        final_array << holiday
      end
    end
  end
  final_array
end







