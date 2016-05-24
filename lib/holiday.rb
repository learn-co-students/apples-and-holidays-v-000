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


  holiday_hash.each do |season, details|
    details.each do |attribute, data|
      if attribute == :christmas || :new_years
        data << supply
      end
    end
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash.each do |season, details|
    details.each do |attribute, data|
      if attribute == :memorial_day
        data << supply
      end
    end
  end

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season] = {holiday_name => supply_array}
  return holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)

  holiday_hash[:winter][:christmas] + holiday_hash[:winter][:new_years]

end

def all_supplies_in_holidays(holiday_hash)


  holiday_hash.each do |season, details|
    puts  "#{season.to_s.capitalize!}:"
    details.each do |attribute, data|
      attribute_split = attribute.to_s.split("_")
      new_attribute = ""
      attribute_split.each do |word|
        word.capitalize!
        new_attribute += "#{word} "
      end
      puts "  #{new_attribute.strip}: #{data.join(", ")}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  myArray=[]

  holiday_hash.each do |season, details|
    details.each do |attribute,data|
      if data.include?("BBQ")
        myArray.push(attribute)
      end
    end
  end

  return myArray
end
