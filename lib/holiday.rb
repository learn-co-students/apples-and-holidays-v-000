require 'pry'
supply = " "
season  = :fall
holiday_name  =  :columbus_day
supply_array  =  ["Flags", "Parade Floats", "Italian Food"]

# given that holiday_hash looks like this:
holiday_hash=
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
    # return the second element in the 4th of July array
     holiday_hash[:summer][:fourth_of_july][1]
end
#second_supply_for_fourth_of_july(holiday_hash)
def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash [:winter][:christmas] << supply
  holiday_hash [:winter][:new_years] << supply
  holiday_hash [:winter]

end

#add_supply_to_winter_holidays(holiday_hash,supply)

def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day] << supply
  #holiday_hash[:spring][:memorial_day]
end
#add_supply_to_memorial_day(holiday_hash, supply)

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season][holiday_name]  =  supply_array
end

def all_winter_holiday_supplies(holiday_hash)
  supply = []
  # return an array of all of the supplies that are used in the winter season
  #holiday_hash[:winter].each do |holiday, supplies|
   #supply << supplies
   holiday_hash[:winter].values.flatten

# puts holiday_supplies
end
all_winter_holiday_supplies(holiday_hash)

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.

   holiday_hash.each do |key, data| puts "#{key.capitalize}:"
     data.each do |attribute, value|
      puts   "  #{attribute.to_s.split("_").collect  { |w|  w.capitalize}.join(" ")}: #{value.join(", ")}"

          #    {w.capitalize}: #{value * ", "}}"
    end
  end
end
#  all_supplies_in_holidays(holiday_hash)
def all_holidays_with_bbq(holiday_hash)
  array_bbq   = []
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  holiday_hash.each do |key, data|
    data.each do |attribute, value|
      value.each do |bbq| if bbq ==   "BBQ"
         array_bbq  << attribute
       end
       end
     end
   end
   array_bbq


end
all_holidays_with_bbq(holiday_hash)
