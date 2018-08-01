
require'pry'

def second_supply_for_fourth_of_july(holiday_hash)

  holiday_hash[:summer][:fourth_of_july][1]
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #
end

def add_supply_to_winter_holidays(holiday_hash, supply)

holiday_hash.each do |season, season_details|
  season_details.each do |holiday, supplies|
     if season == :winter
       supplies << supply
end
end
end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash.each do |season, season_details|
    season_details.each do |holiday, supplies|
       if holiday == :memorial_day
         supplies << supply
  end
  end
  end
  end




def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)

holiday_hash[season][holiday_name] = supply_array
holiday_hash
end



def all_winter_holiday_supplies(holiday_hash)

  holiday_hash[:winter].values.flatten

end

def all_supplies_in_holidays(holiday_hash)

  holiday_hash.each do |season, holidays|
    puts "#{season.to_s.capitalize!}:"
    holidays.each do |holiday, supplies|

      puts "  #{holiday.to_s.split("_").map{|w|w.capitalize}.join(" ")}: #{supplies.join(", ")}"

    end
  end
end

#{
  #:winter => {
    #:christmas => ["Lights", "Wreath"],
    #:new_years => ["Party Hats"]
  #},
  #:summer => {
  #  :fourth_of_july => ["Fireworks", "BBQ"]
  #},
  #:fall => {
  #  :thanksgiving => ["Turkey"]
  #},
  #:spring => {
  #  :memorial_day => ["BBQ"]
  #}
#}


def all_holidays_with_bbq(holiday_hash)
 new_array = holiday_hash.map do |season, holidays|
holidays.map do |holiday, supplies|
holiday  if supplies.include?("BBQ")



end
end
new_array.flatten.compact
end
