require 'pry'

holiday_supplies = {
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

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_supplies[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash.each do |season, holidays_data|
    if season == :winter
      holidays_data.each do |holiday, supplies|
        supplies << supply
      end
    end
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash.each do |season, holiday_data|
    if season == :spring
      holiday_data.each do |holiday, supplies|
        if holiday == :memorial_day
          supplies << supply
        end
        end
      end
  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash.each do |seasons, holiday_data|
    if seasons == season
      holiday_hash[seasons][holiday_name] = supply_array
    end
  end
end

def all_winter_holiday_supplies(holiday_hash)
  supply_return_array = []
  holiday_hash.each do |seasons, holiday_data|
      if seasons == :winter
        holiday_data.each do |indv_holiday, supply| #supply_return_array << supply
          supply.each do |items| supply_return_array << items
          end
        end
      end
  end
  supply_return_array
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holiday_data|
      puts "#{season.to_s.capitalize}:"
    holiday_data.each do |holiday, supplies|
      puts "  #{holiday.to_s.split("_").each do |word| word.capitalize! end.join(" ")}: #{supplies.join(", ")}"
  end
end
end



def all_holidays_with_bbq(holiday_hash)
  holidays_w_bbq = []
  holiday_hash.each do |season, holiday_data|
    holiday_data.each do |holiday, supplies_array|
      supplies_array.each do |item|
        if item == "BBQ"
          holidays_w_bbq << holiday
        end
                          end
                      end
                  end
   holidays_w_bbq
end
