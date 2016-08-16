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
  holiday_hash[:winter][:christmas] << supply
  holiday_hash[:winter][:new_years] << supply

end

def add_supply_to_memorial_day(holiday_hash, supply)
holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[:fall] = {columbus_day: ["Flags", "Italian Food", "Parade Floats"]}
  holiday_hash[:fall]
  holiday_hash[:winter] = {valentines_day: ["Candy Hearts", "Cupid Cut-Out"]}
  holiday_hash[:winter]
end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].flatten.to_s
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holiday|
    puts "#{season.to_s.capitalize}:"
      holiday.each do |holiday, supply|
        puts "  #{holiday.to_s.split('_').map {|word| word.capitalize}.join(' ')}: #{supply.join (', ')}"
    end
  end
end



def all_holidays_with_bbq(holiday_hash)
  holiday_hash.map do |season, holiday|
    holiday.map do |holiday, supply|
        if supply.include?("BBQ")
          holiday
        end
      end
    end.flatten.compact
  end
