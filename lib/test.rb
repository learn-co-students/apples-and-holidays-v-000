require 'pry'

holiday_hash =  {
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

 def all_holidays_with_bbq(holiday_hash)
   # return an array of holiday names (as symbols) where supply lists
   # include the string "BBQ"
   bbq_days = []
   holiday_hash.each do |season, holidays|
     holidays.each do |holiday, supplies|
       if supplies.include?("BBQ")
         bbq_days << holiday
         binding.pry
       end
     end
   end
   bbq_days
 end

 all_holidays_with_bbq(holiday_hash)
