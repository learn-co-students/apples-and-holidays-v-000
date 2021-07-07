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
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash.each do |season, season_info|
      if season == :winter
          season_info.each do |holiday, supplies|
              supplies << supply
          end
      end
  end
  holiday_hash
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
    holiday_hash[season][holiday_name] = supply_array
    holiday_hash
end



def all_winter_holiday_supplies(holiday_hash)
    holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  holiday_hash.each do |season, season_info|
      puts "#{season.to_s.capitalize}:"
      season_info.each do |holiday, supplies|
          puts "  #{holiday.to_s.split("_").collect {|split_holiday| split_holiday.capitalize!}.join(" ")}: #{supplies.join(", ")}"
      end
  end
end

def all_holidays_with_bbq(holiday_hash)
    bbq_list = []
    holiday_hash.each do |season, season_info|
        season_info.each do |holiday, supplies|
            supplies.include?("BBQ") ? bbq_list << holiday : false
        end
    end
    bbq_list
end
