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
  # return the second element in the 4th of July array
  give = " "
  holiday_hash.each { |season, ddates|

         ddates.each {|dates, datadates|

              if dates == :fourth_of_july
                give =  "#{datadates[1]}"
              end
         }
  }
  return give
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
 holiday_hash.each {  |season, ddates|
     if season == :winter
        ddates.each {|dates, datadates|

                 datadates << "Balloons"
        }
    end
 }



end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash.each {  |season, ddates|

         ddates.each {|dates, datadates|
                 if dates == :memorial_day
                      datadates << supply
                 end
         }
     }
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash

  holiday_hash.collect { |season1, ddates|
        if season1  == season

          holiday_hash[season][holiday_name] = supply_array
        end
  }
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season

          array = []
          holiday_hash.each { |season, ddates|
                  if season  == :winter
                    array << ddates.values.flatten
                  end
          }
          array[0]
end

def cambio(newarray_k)
  nuevo = []
       i = 0
             while i < newarray_k.length
               if i.even? || i==0
                   if  newarray_k[i].to_s.include?("_")
                      nuevo =    newarray_k[i].to_s.split("_").collect {|valor|
                                  valor.capitalize
                                }
                      newarray_k[i] = nuevo.join(" ")
                  else
                       nuevo = newarray_k[i].to_s.capitalize
                      newarray_k[i] = nuevo
                  end

               end
               i = i + 1
            end
newarray_k
end


def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.

     newarray_k = []
     holiday_hash.each { |season, ddates|
              newarray2 = []
              newarray_k = []
             puts "#{season}".slice(0.1).capitalize+"#{season}".slice(1..-1) + ":"
                          ddates.each { |date, datadates|
                          newarray_k  <<  date
                          newarray_k  <<  datadates
                       }

                      newarray2 = cambio(newarray_k)
                       i= 0
                       largo = 0
                       largo = newarray2.length
                       largo = largo - 1
                       while i < largo
                           puts "  " + newarray2[i] + ": "  + newarray2[i+1].join(", ")
                         i += 2
                       end
     }
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  newarray = []
  holiday_hash.each {  |season, ddates|

         ddates.each {|dates, datadates|
                if datadates.include?("BBQ")
                  newarray << dates
                end
         }
     }
     newarray
end
