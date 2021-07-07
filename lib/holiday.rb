require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)

  holiday_hash.each do |season,data|
    data.each do |holiday,supply|
        if holiday == :christmas || holiday == :new_years
          holiday_hash[:winter][holiday] << "Balloons"
        end
    end
  end
end

def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash.each do |season,data|
    data.each do |holiday,supplies|
        if holiday == :memorial_day
          holiday_hash[:spring][:memorial_day] << supply
        end
    end
  end
end

def add_new_holiday_with_supplies(holiday_hash,season,holiday,holiday_supplies)
  holiday_hash[season][holiday]=holiday_supplies
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  new_array = []
  holiday_hash[:winter].each do |holiday,supplies|
    new_array << supplies
    #if season == :winter
    #  holiday.each do |holiday,supplies|
    #    p holiday
    #    p supplies
    #    holiday_hash[:winter][holiday][supplies]
    #  end
  #  end
  end
  new_array.flatten
end

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


def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season,holidays|
    puts "#{season.capitalize}:"
    holidays.each do|holiday, supplies|
      puts "  #{holiday.to_s.split("_").map{|word| word.capitalize}.join(" ")}: #{supplies.join(", ")}"
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
  holiday_array =
  holiday_hash.map do |season,holidays|
    holidays.map do |holiday, supplies|
      if supplies.include?("BBQ")
        new_array = holiday
      end
    end
  end
  holiday_array.flatten.compact
end
