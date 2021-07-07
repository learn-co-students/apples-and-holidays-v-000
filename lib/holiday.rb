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
  holiday_supplies[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_supplies[:winter][:christmas]<<"Balloons"
  holiday_supplies[:winter][:new_years]<<"Balloons"
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
holiday_supplies[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
holiday_hash[season][holiday_name.to_sym] = supply_array
holiday_hash
end

#5
def all_winter_holiday_supplies(holiday_supplies)
holiday_supplies[:winter].values.to_s
end

#6
def all_supplies_in_holidays(holiday_hash)
holiday_hash.each do |season, holiday|
puts "#{season.to_s.capitalize}:"
holiday.each do |holiday, supply| 
puts "  #{holiday.to_s.tr("_"," ").split(' ').map {|word| word.capitalize}.join(' ')}: #{supply.join(", ")}"
end
end 
end

#7
def all_holidays_with_bbq(holiday_hash)
 answer = []
holiday_hash.each do |season, data|
  data.each do |holiday, value|
    value.each do |supply|
     if supply == "BBQ"
        answer.push(holiday)
      end
    end
  end
end
answer
 end







