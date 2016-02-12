require 'pry'
def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash= {
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

  holiday_hash.each do|season, festival|
   festival.each do|fest_name, decor|
     if fest_name == :fourth_of_july
       #decor.collect do|value|
       return decor[1]
        end
     end
    end
 # end
   #return the second element in the 4th of July array
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
 holiday_hash[:winter][:christmas] = ["Lights", "Wreath", "Balloons"]
  holiday_hash[:winter][:new_years] = ["Party Hats", "Balloons"]
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day] = ["BBQ" , "Grill" ,"Table Cloth" ]
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[:fall][:columbus_day]= ["Flags", "Italian Food", "Parade Floats"]
  holiday_hash[:winter][:valentines_day]= ["Candy Hearts", "Cupid Cut-Out"]
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
 # holiday_hash.each do |season,festival|

   # if season == :winter
    #   festival.each do|fest_name,decor|
      #   decor.each do |supplies|
      #    return supplies

  holiday_hash[:winter].map do|key, value|

    value
  end.flatten
end




def all_supplies_in_holidays(holiday_hash)
    holiday_hash.each do |season,holidays|
    puts "#{season.to_s.capitalize}:"
    holidays.each do|festival, supply|
      festival.to_s.split.collect do|holiday|

       puts"  #{holiday.split("_").collect do|array_holidays|
          array_holidays.capitalize
          end.join(" ")}: #{supply.join(", ")}"



      end
     end
   end
end


def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  new_arr=[]
  holiday_hash.each do |season,holiday|
    holiday.each do |festival, supply|
      supply.map do |supplies|

       if supplies == "BBQ"
         new_arr << festival
        end

      end
    end
  end
  new_arr
end







