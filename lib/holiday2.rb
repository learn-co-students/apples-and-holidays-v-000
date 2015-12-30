require 'pry'

holiday_hash={
  :winter=>{
    :christmas=>["Lights", "Wreath", "Balloons"], 
    :new_years=>["Party Hats", "Balloons"], 
    :valentines_day=>["Cupid Cut-Out", "Candy Hearts"]
  },  
  :summer=>{
    :fourth_of_july=>["Fireworks", "BBQ"]
    }, 
  :fall=>{
    :thanksgiving=>["Turkey"], 
    :columbus_day=>["Flags", "Parade Floats", "Italian Food"]
  }, 
  :spring=>{
    :memorial_day=>["BBQ"]
  }
}

def second_supply_for_fourth_of_july(holiday_supplies)
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
   holiday_hash[:winter].each do |key, value|
    value << "Balloons"
  end
end
 

def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring].each do |key, value|
    value << "Grill"
    value << "Table Cloth"
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[:fall][:columbus_day] = ["Flags", "Parade Floats", "Italian Food"]
  holiday_hash[:winter][:valentines_day] = ["Cupid Cut-Out", "Candy Hearts"]
  # remember to return the updated hash
end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten
 
  # return an array of all of the supplies that are used in the winter season
  
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holiday|
    puts "#{season.to_s.capitalize!}:"
    holiday.each do |holiday_name, supplies|
      y = holiday_name.to_s.split(" ")
      y.each {|word| word.capitalize!}
      puts "  #{y.join(" ")}: #{supplies.join(", ")}"
  end
end
end

all_supplies_in_holidays(holiday_hash)

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"

end







