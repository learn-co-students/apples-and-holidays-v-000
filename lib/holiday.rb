require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter][:christmas] << "Balloons"
  holiday_hash[:winter][:new_years] << "Balloons"
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash.each do |season,holidays|
    if season == :spring
      holidays.each do |holiday,supplies|
        if holiday == :memorial_day
          supplies << supply
        end
      end
    end
  end
  #  h = holiday_hash[:spring][:memorial_day]
  #  h << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten
end

def make_holiday_names_capitalized(holiday)
  capitalized_arr = holiday.to_s.split("_").collect {|word|word.capitalize!}
  capitalized_arr.join(" ")
end

def all_supplies_in_holidays(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
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
  holiday_hash.each do |season,holidays|
    puts "#{season.to_s.capitalize}:"
    holidays.each do |holiday,supplies|
      puts "  #{make_holiday_names_capitalized(holiday)}: #{supplies.join(", ")}"
    end
  end

end


def all_holidays_with_bbq(holiday_hash)
  holidays_with_bbq=[]
  holiday_hash.each do |season, holidays|
    holidays.each do |holiday,supplies|
      if supplies.include?("BBQ")
        holidays_with_bbq << holiday
      end
    end
  end
  holidays_with_bbq
end
