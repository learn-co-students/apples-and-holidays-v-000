require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_supplies[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter].each do |k, v|
    v << supply
  end 
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring].each do |k, v|
    v << supply if k == :memorial_day
  end 
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash.each do |k, v|
    if season == k
     v[holiday_name] = supply_array 
    end
  end 
  holiday_hash
end


def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  temp = []
  holiday_hash.each do |k, v|
    if k == :winter
      temp = v.values.flatten 
    end
  end
  temp
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |k, v|
    
    puts k.to_s.capitalize! + ":" #season

    v.each do |k, v|
      string = "  "
      string << k.to_s.split("_").map(&:capitalize).join(" ") + ": "
      string << v.join(", ")
      puts string
    end
  end  
end

holiday_supplies = {
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


all_supplies_in_holidays(holiday_supplies)

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  w_bbq = []
  holiday_hash.each do |k, v|
    v.each do |k, v|
      w_bbq << k if v.include? "BBQ" 
    end
  end
  w_bbq
end








