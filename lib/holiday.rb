require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
   holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
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
  holiday_hash[:winter].each do |holiday, value|
      value << "Balloons"
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
    holiday_hash[:spring][:memorial_day] = supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)

  holiday_hash.each do |which_season, data|
      holiday_hash[which_season][holiday_name] = supply_array  if which_season == season
    end
  holiday_hash

end

def all_winter_holiday_supplies(holiday_hash)
  winter_supplies = []
  holiday_hash[:winter].each do |holiday, supplies|
    winter_supplies << supplies
  end
  winter_supplies.flatten
end


def all_supplies_in_holidays(holiday_hash)
    holiday_hash.each do |season, holiday|
      puts season.to_s.capitalize + ":"

# capitalizing holiday name
      holiday.each do |event, supplies|
        event = event.to_s
        event_array = event.split("_")
        event = event_array.map { |word| word.capitalize }
        event = event.join(" ")

        #deal with array of supplies
        supply_string = supplies.join(", ")
        puts "  #{event}: #{supply_string}"

      end
    end
end









# def all_supplies_in_holidays(holiday_hash)
#   holiday_hash.each do |season, holiday|
#     puts "#{season.capitalize}:"
#
#     info.each do |holiday, list|
#         holiday = holiday.to_s  #turn from symbol to string
#         n_holiday = holiday.split("_")  #splits the string
#
#           n_holiday.map {|word| word.capitalize }  #capitalizes each word in holiday name
#
#           n_holiday.join
#
#         if list.is_a?(Array)    #if the list is an array ....  (if it's not, leave as is)
#           list = list.join(", ")   #if it was an array, join it into a string
#         end
#
#       puts "  #{n_holiday}: #{list}"  #output holiday name that was capitalized above adn list
#     end
#   end
# end


def all_holidays_with_bbq(holiday_hash)
  incl_bbq = []
  holiday_hash.each do |season, list|
    list.each do |holiday, supplies|
        if supplies.is_a?(Array)
          incl_bbq << holiday  if supplies.include?("BBQ")
        else
          incl_bbq << holiday  if supplies == "BBQ"
        end
    end
  end
  incl_bbq
end
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
