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
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter].each {|holiday, supplies| supplies << supply}
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holiday_data_hash|
    puts "#{season.to_s.capitalize!}:"
    holiday_data_hash.each do |holiday, supplies|
      puts "  #{holiday.to_s.split("_").map {|word| word.capitalize!}.join(" ")}: #{supplies.join(", ")}"
    end
  end

end

def all_holidays_with_bbq(holiday_hash)
  all_holidays_with_bbq = []
  holiday_hash.each do |season, holiday_data_hash|
    holiday_data_hash.each do |holiday, supplies|
      if supplies.include?("BBQ")
        all_holidays_with_bbq << holiday
      end
    end
  end
  all_holidays_with_bbq
end
