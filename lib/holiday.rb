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
  
  holiday_hash[:winter][:christmas] << supply
  holiday_hash[:winter][:new_years] << supply
  holiday_hash
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  winter = []
  holiday_hash[:winter].each do |holiday|
    winter << holiday
  end 
  winter = winter.flatten
  winter
end

def all_supplies_in_holidays(holiday_hash)
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  final = []
    holiday_hash.each do |season, holiday|
      formatted = (season.to_s+":")
      formatted = formatted.capitalize
      puts formatted
      holiday.each do |hd, value|
        hol = hd.id2name
        hol = hol.split(/ |\_/).map(&:capitalize).join(' ')
        if hol.include?("_")
          lst = hol.split("_")
          lst.each do |ind|
            ind = ind.capitalize
          end 
          hol = lst.join(" ")
        end
        hol = "  "+ hol + ": "
        val = value.join(", ")
        by_holiday = hol + val
        puts by_holiday
      end
      final << formatted
    end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  bbqs = []
  holiday_hash.each do |season, holidays|
    holidays.each do |hd, val|
      if val.include?("BBQ")
        bbqs << hd
      end 
    end
  end 
  bbqs
end







