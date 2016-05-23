require 'pry'
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


def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above 
  # add the second argument, which is a supply, to BOTH the 
  # Christmas AND the New Year's arrays
  holiday_hash[:winter].each do |holiday, items| 
    items<<supply
  end
 end

#puts (add_supply_to_winter_holidays(holiday_supplies, "hello"))

def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  (holiday_hash[:spring][:memorial_day])<<supply
  end 




def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)

holiday_hash[season][holiday_name]=(supply_array)

end



#holiday_hash.each do |season1, holiday_stuff|
#  if season1 == season
 #   holiday_stuff<<holiday_name
  #  (holiday_stuff[holiday_name])<<(supply_array)
  #end
#nd
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


def all_winter_holiday_supplies(holiday_hash)
  m=[]
  holiday_hash[:winter].each do |holiday, supplies|
      m<<supplies
    end
    m.flatten
end

#puts all_winter_holiday_supplies(holiday_supplies)


#def all_supplies_in_holidays(holiday_hash)
#holiday_hash.each do |season, holiday|
#  puts (season.to_s).capitalize! + ":"
#    holiday.each do |name, supplies|
#      puts (name.to_s).capitalize! + ":" 
#        supplies.each do |thing|
#          puts thing.capitalize!
#  end      
#  end
#  end  
#end 

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


def all_supplies_in_holidays(holiday_supplies)

holiday_supplies.each do |season, holiday|
  puts "#{(season.to_s).capitalize!}:"
  holiday.each do |name, supplies|
    puts "  #{(((name.to_s).split("_")).collect {|word| word.capitalize!}).join(" ")}:" + " " + supplies.join(", ")
  end
  end
end 


#puts all_supplies_in_holidays(holiday_supplies)

  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  

def all_holidays_with_bbq(holiday_hash)
 m=[]
holiday_hash.each do |season, holiday|
  holiday.each do |name, supplies|
    if supplies.include?("BBQ")
    m<<name
end
end
end
return m
end

puts all_holidays_with_bbq(holiday_supplies)