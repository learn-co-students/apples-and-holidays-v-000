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
  # return the second element in the 4th of July
  array = holiday_hash[:summer][:fourth_of_july]
  array[1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash.each do |season, holiday|
    if season == :winter
      holiday.each do |day, materials|
        if day == :christmas || day == :new_years
           materials.push(supply)
        end
      end
    end
  end
end

def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  #  add the second argument to the memorial day array
  holiday_hash.each do |season, holiday|
    if season == :spring
      holiday.each do |day, materials|
        if day == :memorial_day
           materials.push(supply)
        end
      end
    end
  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
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
  holiday_hash.each do |season, holidayandsupplies|
    puts season.to_s.capitalize! + ":"

    holidayandsupplies.each do |holiday, supplies|
      if holiday == :new_years || holiday == :fourth_of_july || holiday == :memorial_day
        holidayarray = holiday.to_s.split("_")

          newholidayarray = holidayarray.collect do |day|
            day.capitalize!
          end
        puts "  " + "#{newholidayarray.join(" ")}: " + supplies.join(", ")
      else
        puts "  " + holiday.to_s.capitalize! + ": " + supplies.join(", ")
      end
    end
  end
end


def all_holidays_with_bbq(holiday_hash)
  holidaywithbbq = []
  holiday_hash.each do |season, holidayandsupplies|
    if holidayandsupplies.values.flatten.include?("BBQ")
      holidaywithbbq.push(holidayandsupplies.keys)
    end
  end
  holidaywithbbq.flatten
end
