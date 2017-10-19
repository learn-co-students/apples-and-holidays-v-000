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

def add_supply_to_winter_holidays(holiday_supplies)
  holiday_supplies.each do |season, holiday|
    if season == winter
      holiday << "supply"
    end
  end
end

# def add_supply_to_winter_holidays(holiday_supplies)
#   holiday_supplies[:winter][:christmas][:new_years] = "supply"
# end
