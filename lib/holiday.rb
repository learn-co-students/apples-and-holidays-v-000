require 'pry'
holiday_hash = {
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
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash[:winter][:christmas] << "#{supply}"
  holiday_hash[:winter][:new_years] << "#{supply}"

end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << "#{supply}"

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  a = supply_array
  holiday_hash[:"#{season}"][:"#{holiday_name}"] = a
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
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
  holiday_hash.each do |keys, values|
    puts "#{keys.to_s.capitalize}:"
    values.each do |attributes, data|
      if attributes.to_s.include? "_"
        new_holiday = attributes.to_s.split("_")
          new_holiday.each do |i|
            i.to_s.capitalize!
          end
        puts "  #{new_holiday.join " "}: #{data.join(", ")}"
      else
        puts "  #{attributes.to_s.capitalize}: #{data.join(", ")}"
      end
    end
  end
end 

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  a = []
  holiday_hash.each do |key, value|
    value.each do |attribute, data|
      a << attribute if data.any?("BBQ")
    end
  end
  a.flatten
end
