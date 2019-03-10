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
  holiday_hash.each do |season, holiday_details_hash|
    holiday_details_hash.each do |attribute, data|
      if attribute == :christmas || :new_years
        data << supply
      end
    end
  end
end
=begin
    contacts.each do |person, contact_details_hash|
  contact_details_hash.each do |attribute, data|
    if attribute == :favorite_ice_cream_flavors
      data.delete_if {|ice_cream| ice_cream == "strawberry"}
    end
  end
end
#binding.pry
end
=end

def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash.each do |season, holiday_details_hash|
    holiday_details_hash.each do |attribute, data|
      if attribute == :memorial_day
        data << supply
      end
    end
  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash.update(season => {
    holiday_name => supply_array
    })
end
=begin
programmer_hash.update(:yukihiro_matsumoto => {
   :known_for => "Ruby",
    :languages => ["LISP", "C"]
 })
=end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  holiday_hash.each do |season, holiday_details_hash|
    puts "#{season}:".to_s.capitalize!
    holiday_details_hash.each do |attribute, data|
       puts "  " + attribute.to_s.split('_').each { |element| element.capitalize!}.join(' ') + ": " + data.join(', ')
       #example: enumerable.each { |element| result << block.call(element) }
       #example: string.split(' ').map(&:capitalize).join(' ')
       #"  " + attribute.to_s.capitalize! + ": " + data.join(', ')
      #season.to_s.capitalize! + ":"
      #holiday_details_hash.each do |attribute, data|
      #puts data.to_s.join()
      #working on this version:  puts "  " + attribute.to_s.split(' ').each(&:capitalize!).join(' ') + ": " + data.join(', ')
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
    holiday_hash.map do |season, data|
      data.map do |attribute, value|
          attribute.map do |holiday|
            supply = holiday_hash[season][attribute]
            if supply.include?("BBQ")
            holiday.keys
            end
          end
        end
      #holiday_hash[season].keys
    end
end
#binding.pry
