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
  # given that holiday_hash looks like this
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash.each do |season_hash, list_hash|
    list_hash.each do |holiday_key, supply_array|
      if holiday_key == :christmas || holiday_key == :new_years
        supply_array << "#{supply}"
      end
    end
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash.each do |season_hash, list_hash|
    list_hash.each do |holiday_key, supply_array|
      if holiday_key == :memorial_day
        supply_array << "#{supply}"
      end
    end
  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  new_holiday_hash = {}
  holiday_hash.each do |season_key, list_hash|
    if season_key == :"#{season}"
      new_holiday_hash = (holiday_hash[season_key][:"#{holiday_name}"] = supply_array)
    end
  end
  new_holiday_hash
  # remember to return the updated hash
end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten
  # return an array of all of the supplies that are used in the winter season
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season_key, list_hash|
    puts season_key.to_s.capitalize! << ":"
      list_hash.each do |holiday_key, supplies_array|
        puts "  " + holiday_key.to_s.split("_").collect {|words| words.capitalize!}.join(" ") << ": " +
              supplies_array.join(", ")
      end
    end
  end
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.


def all_holidays_with_bbq(holiday_hash)
  holiday_bbq = holiday_hash.collect do |season_key, list_hash|
    list_hash.collect do |holiday_key, supplies_array|
      if supplies_array.any? {|supply| supply == "BBQ"}
        holiday_key
      end
    end
  end
  holiday_bbq.flatten.compact

  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"

end
