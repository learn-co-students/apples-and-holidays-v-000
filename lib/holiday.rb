require 'pry'
#~~~HAVICK WAS HERE~~~

def second_supply_for_fourth_of_july(holiday_hash)

  holiday_hash[:summer][:fourth_of_july][1]
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
  holiday_hash[:winter][:christmas] << "Balloons"
  holiday_hash[:winter][:new_years] << "Balloons"
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays

end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply
  #holiday_hash[:spring][:memorial_day] << "Table Cloth"

  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)

  holiday_hash[season][holiday_name] = supply_array

  # remember to return the updated hash

end

def all_winter_holiday_supplies(holiday_hash)
holiday_hash[:winter].values.to_s

end

def all_supplies_in_holidays(holiday_hash)
  decor = ""
  mutated_holiday = ""
  holiday_hash.each do |key, value|
  puts "#{key.capitalize}:"

    value.each do |holiday, favors|
   mutated_holiday = holiday.to_s.split("_").map { |season| season.capitalize!}
   decor = favors.join(", ") #binding.pry
   puts "  #{mutated_holiday.join(" ")}: #{decor}"
    end

  end






  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights*, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.


  def all_holidays_with_bbq(holiday_hash)
  winner=[]
  holiday_hash.each do |season, holiday|
    holiday.each do |decor, value|
     if value.include?("BBQ")
       winner << holiday.keys
      end

       end

  end
winner.flatten
end

end
