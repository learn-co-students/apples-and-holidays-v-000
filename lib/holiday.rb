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
    holiday.each do |key, value|
      if key == :fourth_of_july
        return value[1]
      end

    end
  end
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash.each do |season, holiday|
    holiday.each do |key, value|
      if key == :christmas
        value << supply
      end
      if key == :new_years
        value << supply
      end
    end

  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash.each do |season, holiday|
    holiday.each do |key, value|
      if key == :memorial_day
        value << supply
      end

    end

  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash

  holiday_hash[season] = {holiday_name => supply_array}
  holiday_hash

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash

  holiday_hash[season] = {holiday_name => supply_array}
  holiday_hash

end

def all_winter_holiday_supplies(holiday_hash)
  updated_supplies = []
  # return an array of all of the supplies that are used in the winter season
  holiday_hash.each do |season, holiday|
  	if season == :winter
    	holiday.each do |date, supplies|
   			updated_supplies << supplies

    	end
    	return updated_supplies.flatten
    end

  end
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
    holiday.each do |event, supplies|
    	new_event = event.to_s
    	updated_event = new_event.split("_")
    	updated_event.each do |x|
    		x.capitalize!

    	end

    	updated_event = updated_event.join(" ")



    	new_supplies = supplies.join(", ")
	puts "  #{updated_event}: #{new_supplies}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  array = []
  holiday_hash.each do |season, holiday|
    holiday.each do |event, supplies|
    	supplies.each do |x|
    		if x == "BBQ"
    			array << event

    		end

    	end

    end

  end
  return array
end
