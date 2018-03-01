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
  holiday_hash[season] = {holiday_name => supply_array}
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
  str = ''
  new_str = ''
  other_str = ''
  new_arr = []
  another = []

  holiday_hash.each do |season, holiday|
    str = season.to_s
    puts "#{str.capitalize}:"
    holiday.each do |key, value|
      new_str = key.to_s
      new_str.gsub! '_', ' '
      another = new_str.split(" ")

     # new_str = new_str.join(" ")
      another.each {|element| new_arr.push(element.capitalize)}
      another = new_arr.join(" ")
      other_str = value.join(", ")
       puts "  #{another}: #{other_str}"
      new_arr = []

    end
  end
end


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

def all_holidays_with_bbq(holiday_hash)
  arr = []
  holiday_hash.each do |season, holiday|
    holiday.each do |key, value|
      value.each do |element|
        if element == "BBQ"
          arr.push(key)
        end
      end
    end
  end
    arr
end


all_holidays_with_bbq(holiday_hash)
