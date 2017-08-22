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
supply_array = ["Rum", "Chips"]

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash.each do |key_season, value_holiday|
    # binding.pry
    if value_holiday.keys.include?(:fourth_of_july)
      return value_holiday.values[0][1]
    end
  end
end  # COMPLETE

# second_supply_for_fourth_of_july(holiday_hash)

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash.each do |season, holiday|
    if season == :winter
      holiday.each do |holiday_key, supply_array|
        # binding.pry
        supply_array << supply
      end
    end
  end
end  # COMPLETE

# add_supply_to_winter_holidays(holiday_hash, supply)


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash.each do |season, holiday|
    if season == :spring
      holiday.each do |holiday_key, supply_array|
        if holiday_key == :memorial_day
          supply_array << supply
        end
      end
    end
  end
  # add the second argument to the memorial day array
end  # COMPLETED
# add_supply_to_memorial_day(holiday_hash, supply)

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  holiday_hash.each_pair do |season_key, holiday_value|
    if season_key == season
      # binding.pry
      holiday_value[holiday_name] = supply_array

      holiday_value = holiday_value.sort.to_h

    end

  end

  return holiday_hash
end  #CONPLETED
# add_new_holiday_with_supplies(holiday_hash, :fall, :columbus_day, supply_array)

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season

  holiday_hash.each_pair.flat_map do |season_key, holiday_value|
    if season_key == :winter
      holiday_value.each_pair.flat_map do |holiday, supply_array|
        supply_array.delete_if {|item| item == nil}
      end
    end
  end
end
# all_winter_holiday_supplies(holiday_hash)


def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  thread = ""
  holiday_hash.each_pair do |season, holiday|
  thread << "#{season.to_s.capitalize!}:" + "\n"
    holiday.each_pair do |day, supply_array|
      # binding.pry
      if day.to_s.split("_").count > 1
        thread << "  #{day.to_s.split("_").collect {|word| word.capitalize!}.join(" ")}: "
      else
        thread << "  #{day.to_s.split("_").join.capitalize!}: "
      end
      # binding.pry
      supply_array.each_with_index do |item, index|
        if index == supply_array.count - 1
          # binding.pry
          thread << "#{item}" + "\n"
        else
          thread << "#{item}, "
        end
      end
    end
  end
  puts thread
end
# all_supplies_in_holidays(holiday_hash)


def all_holidays_with_bbq(holiday_hash)

  array = holiday_hash.each_pair.flat_map do |season, holiday_value|
    holiday_value.each_pair.flat_map do |holiday, supply_array|
      if supply_array.include?("BBQ")
         holiday
      end
    end
  end
  array.compact!
end
all_holidays_with_bbq(holiday_hash)
