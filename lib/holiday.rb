

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
      puts "#{holiday.to_s.split("_").collect {|h| h.capitalize}.join(" ")}: #{supplies.collect {|s|}}"
    end
  end
end
