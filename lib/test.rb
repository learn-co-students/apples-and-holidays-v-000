require 'pry'

holiday_supplies =
{
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

def add_supply_to_winter_holidays(holiday_supplies, supply)
  holiday_supplies.each do |season, holiday|
    binding.pry
    if season == :winter && holiday == :christmas
      holiday_supplies[:winter][:christmas][2] = "#{supply}"
    elsif season == :winter && holiday == :new_years
      holiday_supplies[:winter][:christmas][1] = "#{supply}"
    end
  end
end
