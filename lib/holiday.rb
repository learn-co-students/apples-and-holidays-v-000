require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
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
  
  holiday_supplies[:summer][:fourth_of_july][1]


end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above 
  # add the second argument, which is a supply, to BOTH the 
  # Christmas AND the New Year's arrays

  holiday_supplies[:winter][:christmas] << "Balloons"
  holiday_supplies[:winter][:new_years] << "Balloons"
  
end
 

def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array

  holiday_supplies[:spring][:memorial_day] << "Grill"
  holiday_supplies[:spring][:memorial_day] << "Table Cloth"

  
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash

  holiday_supplies[:fall][:columbus_day] = ["Flags", "Italian Food", "Parade Floats"]
  holiday_supplies[:winter][:valentines_day] = ["Candy Hearts", "Cupid Cut-Out"]


  holiday_supplies

  
end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].collect do |holiday, supplies|
    supplies
    end.flatten
end



def all_supplies_in_holidays(supplies_hash)
  holiday_supplies.each do |season, holidays|
    puts "#{season.capitalize}:"
    holidays.each do |holiday, supplies|
      puts"  #{holiday.to_s.split('_').map {|w| w.capitalize }.join(' ') }: #{supplies.join(", ")}"
    end
  end
end


def all_holidays_with_bbq(supplies_hash)
  supplies_hash.map do |season, holidays|
    holidays.map do |holiday, supplies|
      holiday if supplies.include?("BBQ")
    end
  end.flatten.compact
end







