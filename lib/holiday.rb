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
  holiday_supplies[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash.each do | season, supply_hash |
    supply_hash.each do | holiday, supply |
      if season == :winter
        supply << "Balloons"
      end
    end
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash.each do | season, supply_hash |
    supply_hash.each do | holiday, supply_item |
      if holiday == :memorial_day
        supply_item << supply
      end
    end
  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
end

def all_winter_holiday_supplies(holiday_hash)
  winter_supplies = []
  holiday_hash.each do | season, supply_hash |
          if season == :winter
    supply_hash.each do | holiday, supply |
        winter_supplies << supply
      end
    end
  end
  winter_supplies.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do | season, supply_hash |
    puts "#{season.capitalize}:"
    supply_hash.each do | holiday, supply |
      puts "  #{holiday.to_s.split('_').map(&:capitalize).join(' ')}: #{supply.join(', ')}"
    end
  end
end


  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.


def all_holidays_with_bbq(holiday_hash)
    bbq_holidays = []
  holiday_hash.each do | season, supply_hash |
    supply_hash.each do | holiday, supply_item |
      if supply_item.include?("BBQ")
        bbq_holidays << holiday
      end
    end
  end
  bbq_holidays
end
