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

  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above 
  # add the second argument, which is a supply, to BOTH the 
  # Christmas AND the New Year's arrays

  holiday_hash[:winter][:christmas].push(supply)
  holiday_hash[:winter][:new_years].push(supply)
  
end
 

def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day].push(supply)
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season][holiday_name] = supply_array
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  holiday_hash[:winter].collect {|holiday, supplies| supplies.collect{|x| x} }.flatten
end

def all_supplies_in_holidays(hol_sup)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  
# holiday_hash.each {|season, holiday, supplies| puts season.id2name.capitalize + ":"
#   holiday_hash[season].each { |holiday, supplies| 
#     print "  " + holiday.id2name.split("_").map(&:capitalize)*" "
#   supplies.each { |x| 
#     unless x.equal? supplies.last
#       print x + ", "
#     else
#       puts x
#     end
#     }
#   }
# }

hol_sup.each do |season, holidays|     
   print season.id2name.capitalize + ": \n"
   holidays.each do |holiday, supplies|
      print "  " + holiday.id2name.split("_").map(&:capitalize)*" " + ": "
      supplies.each do |x|
          unless x.equal? supplies.last
             print x + ", "
          else
             print x + "\n"
          end
      end
    end
  end

end


def all_holidays_with_bbq(hol_sup)
  # return an array of holiday names (as symbols) where supply lists
#   # include the string "BBQ"

bbq_hol = []
hol_sup.each do |season, holidays| 
  holidays.each do  |holiday, supplies| 
    supplies.collect do |x| 
      if x == "BBQ"
        bbq_hol.push(holiday)   
      end
    end
  end
end

bbq_hol

end







