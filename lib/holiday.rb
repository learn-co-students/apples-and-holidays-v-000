

# holiday_supplies = {
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
# end

def second_supply_for_fourth_of_july(holiday_supplies)
  holiday_supplies[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_supplies, supply)
  holiday_supplies[:winter][:christmas] << supply
  holiday_supplies[:winter][:new_years] << supply
end

def add_supply_to_memorial_day(holiday_supplies, supply)
  holiday_supplies[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_supplies, season, holiday, supplies_for_new_holiday)
  holiday_supplies[season]
  holiday_supplies[season][holiday] = supplies_for_new_holiday
end

def all_winter_holiday_supplies(holiday_supplies)
  holiday_supplies[:winter].collect {|holiday, supply| supply}.flatten
end

def all_supplies_in_holidays(holiday_supplies)
  holiday_supplies.each do |season, holiday_hash|
    puts "#{season.capitalize}:"
    holiday_hash.each do |holiday, supplies|
      puts "  #{holiday.to_s.split("_").collect {|h| h.capitalize}.join(" ")}: #{supplies.join(", ")}" #I tabbed thist o indent!
    end
  end
end


def all_holidays_with_bbq(holiday_supplies)
  bbq_hash = []
  holiday_supplies.each do |season, holiday_hash|
  holiday_hash.each do |holiday, supplies|
    if supplies.include?("BBQ")
      bbq_hash << holiday_hash.keys
      end
    end
  end
  bbq_hash.flatten
end

# def all_holidays_with_bbq(holiday_supplies)
#   new_array = []
#   new_array << holiday_supplies[:summer].keys
#   new_array << holiday_supplies[:spring].keys
#   new_array.flatten
# end


# def all_holidays_with_bbq(holiday_supplies)
#   holiday_supplies = [":fourth_of_july", ":memorial_day"]
#   holiday_supplies
# end

# def all_holidays_with_bbq(holiday_supplies)
#   new_array = []
#   new_array << holiday_supplies[:summer].to_s
# end
# def all_holidays_with_bbq(holiday_supplies)
#   if holiday_supplies.flatten.include?("BBQ")
#     holiday
#   end
# end
