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
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter].map do |holiday,supply|
    supply << "Balloons"
  end
end

def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] = supply
end


def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season] = {holiday_name => supply_array}
end



def all_winter_holiday_supplies(holiday_hash)
holiday_hash[:winter].values.flatten
  #winter_supplies = []
  #holiday_hash.map do |season,holidays|
  #  if season == :winter
  #    holidays.each do |holiday,supplies|

  #    winter_supplies =  holidays.values
  #    end
  #  end
  #end
  #winter_supplies.flatten
end


def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |seasons, holidays|
    puts seasons.to_s.capitalize! + ":"
    holidays.each do |holiday, supplies|
      puts "  " + holiday.to_s.split(/ |\_/).map(&:capitalize).join(" ") + ": " + supplies.join(", ")
     end
    end
  end

    #holiday_hash.each do |season, holidays|
    #   seas = holiday_hash[season].to_s.capitalize!
    #   holidays.each do |holiday,supplies|
    #     holz = holiday.to_s.split.map(&:capitalize).join(" ") + ": " + supplies.join(", ")
    #   end
    # end
    # puts seas + holz

  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:   season.to_s.capitalize!
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.

def all_holidays_with_bbq(holiday_hash)
  bbq_holidays =[]
  holiday_hash.select do |season, holidays|
    holidays.each do |holiday, supplies|
      if supplies.include?("BBQ")
        bbq_holidays << holiday
      end
    end
  end
  bbq_holidays
end
