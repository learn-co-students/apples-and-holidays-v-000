require 'pry'


def second_supply_for_fourth_of_july(holiday_hash)
  holiday_supplies[:summer][:fourth_of_july][1]
end


def add_supply_to_winter_holidays(holiday_hash, supply)
  #not working
  holiday_hash[:winter][:christmas] << "#{supply}"
  holiday_hash[:winter][:new_years] << "#{supply}"
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << "#{supply}"
end


def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end


def all_winter_holiday_supplies(supplies_hash)
holiday_supplies[:winter].map do |holiday, supplies|
supplies
end.flatten
end


def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holiday|
    puts "#{season.to_s.capitalize}:"
    holiday.each do |name, supplies|
        capitalized_name = name.to_s.split('_').each do |word|
            word.capitalize!
          end
          capitalized_name = capitalized_name.join(' ')
          puts "  #{capitalized_name}: #{supplies.join(", ")}"
        end
      end
  end


def all_holidays_with_bbq(holiday_hash)
  holiday_hash.map do |season, holidays|
      holidays.map do |holiday, supplies|
        holiday if supplies.include?("BBQ")
      end
    end.flatten.compact
end
