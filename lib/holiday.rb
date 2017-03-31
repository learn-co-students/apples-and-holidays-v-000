require 'pry'

holiday_supplies =
{
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

def second_supply_for_fourth_of_july(holiday_supplies)
  holiday_supplies[:summer][:fourth_of_july][1]

  #   arr = []
  #     holiday_hash.each do |name, value|
  #       value.each do |var, item|
  #        if var == :fourth_of_july
  #          item.find{|grocery| arr << grocery if grocery == "BBQ"}
  #   # return the second element in the 4th of July array
  #     end
  #   end
  # end
  # return arr.join("")
end

def add_supply_to_winter_holidays(holiday_supplies, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  add_supply = holiday_supplies[:winter]
  both = add_supply[:christmas] << supply
  add_nye = holiday_supplies[:winter]
  last = add_nye[:new_years] << supply
  return holiday_supplies
end


def add_supply_to_memorial_day(holiday_supplies, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  add_mem = holiday_supplies[:spring]
  add_one = add_mem[:memorial_day] << supply
  holiday_supplies[:spring][:memorial_day] == supply
end


def add_new_holiday_with_supplies(holiday_supplies, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
holiday_supplies.each do |seasons, holiday|
	  if seasons == season
	   holiday_supplies[season][holiday_name] = supply_array
   end
 end
 return holiday_supplies
end


def all_winter_holiday_supplies(holiday_supplies)
  # return an array of all of the supplies that are used in the winter season
  return holiday_supplies[:winter].values.flatten
end




def all_supplies_in_holidays(holiday_supplies)
  holiday_supplies.each do |season, holiday|
    puts "#{season.capitalize}:"
    holiday.each do |holiday, supply|
      holiday_name = holiday.to_s.split("_")
      holiday_name = holiday_name.collect{|word| word.capitalize}.join(" ")
      supply = supply.join(", ")
      puts "  #{holiday_name}: #{supply}"
    end
  end
end


def all_holidays_with_bbq(holiday_supplies)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
arr = []
holiday_supplies.each do |season, holiday|
  holiday.each do |name, value|
    if name == :fourth_of_july || name == :memorial_day
          arr << name
    end
  end
end
return arr
end
