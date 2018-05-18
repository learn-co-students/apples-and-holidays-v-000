require 'pry'

holiday_hash = {:winter => {:christmas => ["Lights", "Wreath"],:new_years => ["Party Hats"]},:summer => {:fourth_of_july => ["Fireworks", "BBQ"]},:fall => {:thanksgiving => ["Turkey"]},:spring => {:memorial_day => ["BBQ"]}}

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
  holiday_hash[:winter].each do |key, value|
    holiday_hash[:winter][key] << supply
  end
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
# etc.
def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each_pair do |key, value|
    # winter, summer, fall, spring
    puts key.to_s.capitalize! + ":"
    holiday_array = value.flatten
    holiday_array.each do |element|
        if holiday_array.size > 2
          # christmas, new_years
          puts "  #{holiday_array[0].capitalize}: #{holiday_array[1][0]}, #{holiday_array[1][1]}"
          two_words = holiday_array[2].to_s.split("_")
          two_words.each {|word|word.capitalize!}
          two_words = two_words.join(" ")
          string_thing = holiday_array[3]
          puts "  #{two_words}: #{string_thing[0]}"
        else
          # fourth_of_july, thanksgiving, memorial_day
          compound_name = holiday_array[0].to_s.split("_")
          compound_name.each {|word|word.capitalize!}
          compound_name = compound_name.join(" ")
          short_holiday = "  #{compound_name}: #{holiday_array[1][0]}"
          if holiday_array[1].size > 1
            puts short_holiday << ", #{holiday_array[1][1]}"
          else
            puts short_holiday
          end
        end
    end
  end
# here is their (much more elegant) solution:
#   holiday_hash.each do |season, holidays|
#     puts "#{season.capitalize}:"
#     holidays.each do |holiday, supplies|
#       puts"  #{holiday.to_s.split('_').map {|w| w.capitalize }.join(' ') }: #{supplies.join(", ")}"
#     end
#   end
end

def all_holidays_with_bbq(holiday_hash)
  bbq_arr = []
  holiday_hash.each_value do |value|
    value.each_pair do |key, value|
      if value.include?("BBQ")
        bbq_arr << key
      end
    end
  end
  bbq_arr
  # here is their (much more elegant) solution:
  # holiday_hash.map do |season, holidays|
  #   holidays.map do |holiday, supplies|
  #     holiday if supplies.include?("BBQ")
  #   end
  # end.flatten.compact
end
