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
  holiday_hash[:winter].each { |day, thing| thing << supply}

end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  
  holiday_hash[season][holiday_name] = supply_array
  
end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten

end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each {
    |season, day|
      season = season.to_s.capitalize!
        puts "#{season}:"
        day.each {
          |name, supply|
          if name.to_s.count('_') != 0
            namestring = name.to_s.split('_')
              namestring.each { |n| n.capitalize!}
              namestring = namestring.join(" ")
          else
            namestring = name.to_s.capitalize!
        end
          puts"  #{namestring}: #{supply.flatten.join(", ")}"
        }
  }
end


def all_holidays_with_bbq(holiday_hash)
  array = []
  holiday_hash.each { |season, day|
    day.each { |name, supply|
      array << name if supply.include?("BBQ")
    }
  }
  array
end







