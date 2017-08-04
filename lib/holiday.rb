require 'pry'
holiday_hash = {
  :winter => {
    :christmas => ["Lights", "Wreath"],
    :new_years => ["Party Hats"]
  },
  :summer => {
    :fourth_of_july => ["Fireworks", "BBQ"]
  },
  :fall => {
    :thanksgiving => ["Turkey"]
  },
  :spring => {
    :memorial_day => ["BBQ"]
  }
}
def second_supply_for_fourth_of_july(holiday_hash)
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
  holiday_hash[season][holiday_name]= supply_array
end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, hash_of_holidays|
    puts "#{season.to_s.capitalize}:"
    hash_of_holidays.each do |holiday, materials_array|
      capitalized_holiday = holiday.to_s.split("_").map { |word| word.capitalize }.join(" ")
      puts "  #{capitalized_holiday}: #{materials_array.join(", ")}"
    end
  end
end


def all_holidays_with_bbq(holiday_hash)
  holiday_array = []
  holiday_hash.each do |season, hash_of_holidays|
    hash_of_holidays.each do |holiday, materials_array|
      materials_array.each do |material|
        if material == "BBQ"
          holiday_array << holiday
        end
      end
    end
  end
  holiday_array
end

# return an array of holiday names (as symbols) where supply lists
# include the string "BBQ"
