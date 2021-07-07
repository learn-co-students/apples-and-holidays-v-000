require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_supplies[:summer][:fourth_of_july][1]



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
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_supplies[:winter][:christmas] << supply
  holiday_supplies[:winter][:new_years] << supply
end


def add_supply_to_memorial_day(holiday_hash, supply)
    holiday_supplies[:spring][:memorial_day] << supply
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
end


def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_supplies[season][holiday_name] = supply_array
  holiday_supplies
end

def all_winter_holiday_supplies(holiday_hash)
  winter_supplies = holiday_hash.dig(:winter, :christmas) + holiday_hash.dig(:winter, :new_years)
  winter_supplies
  # return an array of all of the supplies that are used in the winter season

end

def all_supplies_in_holidays(holiday_hash)
  formatted = holiday_supplies.to_a
  holiday_supplies.each do |season, holidays|
    puts "#{season.capitalize}:"
      holidays.each do |holiday, supplies|
        puts "  #{holiday.to_s.split("_").map(&:capitalize).join(' ')}: #{supplies.join(", ")}"
      end #each
  end #each
end

def all_holidays_with_bbq(holiday_hash)
  new_hash = []
  holiday_hash.each do |season, holidays|
    holidays.each do |holiday, supplies|
      supplies.collect do |supply|
        if supply == "BBQ"
          new_hash << holiday
        end #if
      end #collect
    end #each
  end #each
    new_hash
end
