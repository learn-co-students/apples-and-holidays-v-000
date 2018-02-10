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

  holiday_hash.each do |season, holiday|
          	 holiday.each do |event, thing|
          	 	if event == :fourth_of_july
         	        return thing[1]

         	  end
         	 end

         end
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash.each do |season, holiday|
             holiday.each do |event, thing|
                  if event == :christmas || :new_years
                    #return thing[1]
                     thing << supply
                  end
             end
         end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
      holiday_hash.each do |season, holiday|
            holiday.each do |event, thing|
                  thing << supply if event == :memorial_day

            end
      end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash

       return  holiday_hash[season][holiday_name] = supply_array

end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  array_of_supplies = []
  holiday_hash.each do |season, holiday|
        holiday.each do |event, supply|
             if event == :christmas || :new_years
            		array_of_supplies << supply
             end
        end
  end
  array_of_supplies.flatten

end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  holiday_hash.each do |season, holiday|
       puts "#{season.capitalize}:"
            holiday.each do |event, needed|
                   puts "  #{event.to_s.split('_').map(&:capitalize).join(' ')}: #{needed.join(", ")}"

            end
      end
 end


 def all_holidays_with_bbq(holiday_hash)
   # return an array of holiday names (as symbols) where supply lists
   # include the string "BBQ"
 keyass =[]
   holiday_hash.each do |season, holiday|
                 holiday.find do |key, values|
                 if values.include?("BBQ")
             			keyass << key
             	 end
       end
 end
 keyass
 end
