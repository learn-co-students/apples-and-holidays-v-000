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
  holiday_hash[:winter].each do |holiday, supplay_arr|
    supplay_arr << supply
  end
end

def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring].each do |holiday, supplay_arr|
    supplay_arr << supply
  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  new_season = {
    season.to_sym => {
      holiday_name.to_sym => supply_array
      }
    }
  holiday_hash.merge!(new_season)
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  holiday_hash[:winter].values.join(", ")
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, data|
    season = season.to_s.capitalize + ":"
    puts season

    data.each do |attribute, value|
      attribute = attribute.to_s.split("_").collect(&:capitalize).join(" ")
      value = value.join(", ")
      puts "  #{attribute}: #{value}"
    end
  end
end


def all_holidays_with_bbq(holiday_hash)
    bbq=[]
      holiday_hash.each do |season, holiday|
        holiday.each do |holiday, event|
          event.each do |event, item|
             if event == "BBQ"
               bbq << holiday
             end
          end
       end
     end
     bbq
end


# def second_supply_for_fourth_of_july(supplies_hash)
#   supplies_hash[:summer][:fourth_of_july][1]
# end

# def add_supply_to_winter_holidays(supplies_hash, supply)
#   supplies_hash[:winter].each do |holiday, supplies|
#     supplies << supply
#   end
# end
 

# def add_supply_to_memorial_day(supplies_hash, supply)
#   supplies_hash[:spring][:memorial_day] << supply
# end

# def add_new_holiday_with_supplies(supplies_hash, season, new_holiday_name, supplies_list)
#   supplies_hash[season][new_holiday_name] = supplies_list
#   supplies_hash
  
# end

# def all_winter_holiday_supplies(supplies_hash)
#   holiday_supplies[:winter].map do |holiday, supplies|
#     supplies
#   end.flatten
# end

# def all_supplies_in_holidays(supplies_hash)
#   holiday_supplies.each do |season, holidays|
#     puts "#{season.capitalize}:"
#     holidays.each do |holiday, supplies|
#       puts"  #{holiday.to_s.split('_').map {|w| w.capitalize }.join(' ') }: #{supplies.join(", ")}"
#     end
#   end
# end

# def all_holidays_with_bbq(supplies_hash)
#   supplies_hash.map do |season, holidays|
#     holidays.map do |holiday, supplies|
#       holiday if supplies.include?("BBQ")
#     end
#   end.flatten.compact
# end



