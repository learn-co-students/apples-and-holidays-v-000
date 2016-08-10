def second_supply_for_fourth_of_july(holiday_supplies)
  holiday_supplies[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_supplies,items)
  holiday_supplies.each do |season, holiday|
    if season == :winter
        holiday.each do |holiday, supply|
          holiday[supply] >> items
        end
    end
  end
end

def add_supply_to_memorial_day(holiday_supplies)
  holiday_supplies.each do |season, holiday|
    if season == :spring
      holiday.each do |holiday, supply|
        if holiday == :memorial_day
          supply << "Grill"
        end
      end
    end
  end
end

def add_new_holiday_with_supplies(holiday_supplies)
  holiday_supplies[:fall] = {[:columbus_day] => ["Flags", "Parade Floats", "Italian Food"]}
  holiday_supplies.each do |season, holiday|
      season[holiday] => supply << supply
    end
  end
end

def all_winter_holiday_supplies(holiday_supplies)
  holiday_supplies[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_supplies)
  all_supplies = []
  holiday_supplies.each do |season, holiday|
    all_supplies << holiday.values
    end
  all_supplies
end

def all_holidays_with_bbq(holiday_supplies)
end
