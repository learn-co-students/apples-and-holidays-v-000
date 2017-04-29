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
  holiday_hash.each do |season, holiday_details_hash|
    if season == :winter
      holiday_details_hash.each do |holiday, supplies|
        supplies << supply
      end
    end
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash.each do |season, holiday_details_hash|
    if season == :spring
      holiday_details_hash.each do |holiday, supplies|
        supplies << supply
      end
    end
  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  #write a method that adds a new holiday and its associated supplies to any season.
  # remember to return the updated hash
  holiday_hash[season][holiday_name] = supply_array

end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  holiday_hash[:winter].values.flatten

end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holiday_details_hash|
    puts "#{season.to_s.capitalize}:"
    holiday_details_hash.each do |holiday, supplies|

      holiday.to_s.split.each do |word|
        if holiday.to_s.include? "_"
            puts "  #{holiday.to_s.tr_s!("_", " ").split.map(&:capitalize).join(' ')}: #{supplies.join(", ")}"
        else
          puts "  #{holiday.to_s.capitalize!}: #{supplies.join(", ")}"
        end
      end
    end
  end
end


def all_holidays_with_bbq(holiday_hash)
  all_holidays_with_bbq = []
    holiday_hash.each do |season, holiday_details_hash|
      holiday_details_hash.each do |holiday, supplies|
      if supplies.include?("BBQ")
        all_holidays_with_bbq << holiday
      end
    end
  end
  all_holidays_with_bbq
end
