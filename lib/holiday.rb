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


def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:

  # return the second element in the 4th of July array
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # christmas and new Years
  holiday_hash[:winter].each {|key,value| value << supply }
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
holiday_hash[season][holiday_name] = supply_array


end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten

end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each {|season,holidays|
                                      puts season.to_s.capitalize + ":"
                                      holidays.each {|holiday,supplies|
                                      puts "  #{holiday.to_s.split("_").map{|x| x.capitalize}.join(" ")}: #{supplies.join(", ")}"
                                      }
                    }

end


def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  bbq_array = []
  holiday_hash.each {|season,holiday|
                      holiday.each{|holiday,supplies|
                                    if supplies.include? ("BBQ")
                                    bbq_array << holiday
                                    end
                                  }
                    }
bbq_array
end
