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
  # return the second element in the 4th of July array
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter].each do |holiday, decorations|
      decorations << supply
    end
end


def add_supply_to_memorial_day(holiday_hash, supply)
    holiday_hash[:spring].each do |holiday, decorations|
      decorations << supply
    end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
holiday_hash[season][holiday_name] = supply_array
end

def all_winter_holiday_supplies(holiday_hash)
<<<<<<< HEAD
  winter_supplies = []
  holiday_hash[:winter].each do |holiday, decoration|
    winter_supplies << decoration
  end
  winter_supplies.join(",")
=======
  holiday_hash[:winter].collect do |holiday, decoration|
    holiday[decoration]
    end 
  end 
>>>>>>> c5734acad74ad979e4a34a7dfdaee2b34233194d
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holiday|
    puts "#{season}:".capitalize
    holiday.each do |holiday, decoration|
    puts "  " + "#{holiday}".capitalize + ": #{decoration[0..-1].join(", ")}"
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

<<<<<<< HEAD
# def all_holidays_with_bbq(holiday_hash)
#   # return an array of holiday names (as symbols) where supply lists
#   # include the string "BBQ"
#
# end
=======
def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"

end
>>>>>>> c5734acad74ad979e4a34a7dfdaee2b34233194d
