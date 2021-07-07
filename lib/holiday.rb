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
    holiday_supplies[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)

  holiday_supplies[:winter][:new_years] << "Balloons"
  holiday_supplies[:winter][:christmas] << "Balloons"
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)

  holiday_hash[season][holiday_name] = supply_array

end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten
end

# iterate through holiday_hash and print items such that your readout resembles:
# Winter:
#   Christmas: Lights, Wreath
#   New Years: Party Hats
# Summer:
#   Fourth Of July: Fireworks, BBQ

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holiday_names|
    puts "#{season.capitalize}:"
    holiday_names.each do |holiday_name, supply_arrays|
      #binding.pry
      puts "  #{holiday_name.to_s.split('_').collect do |word|
          word.capitalize
        end.join(' ')}: #{supply_arrays.join(", ")}"


      #supply_arrays.each do |supply_array, supplies|
     #binding.pry
      #puts <<~HEREDOC
      #{}"#{season.capitalize}:"
      #  "#{holiday_name.capitalize}: #{supplies}"
      #HEREDOC
    #end
    end
  end
end


def all_holidays_with_bbq(holiday_hash)
  holiday_array = []
  holiday_hash.each do |season, holidays|
    holidays.each do |holiday, holiday_supplies|
    if holiday_supplies.include?("BBQ")
      holiday_array  << holiday
    end
  end
end
 holiday_array
end
