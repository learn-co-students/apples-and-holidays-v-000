require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
holiday_hash[:winter][:christmas] << supply
holiday_hash[:winter][:new_years] << supply

  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays

end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array

end

def all_winter_holiday_supplies(holiday_hash)
  winter_array = []
  holiday_hash[:winter].each { |k , v| winter_array << v }
  winter_array.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each { |k, v| puts "#{k.to_s}:".capitalize }
  christmas_array = []
  holiday_hash[:winter].each { |k, v| christmas_array << "#{k.to_s}:".capitalize }
  holiday_hash[:winter][:christmas].each { |v| christmas_array << "#{v.to_s}".capitalize }
  puts "  #{christmas_array[0]} #{christmas_array[2, 3].join(", ")}"
  ny_array = []
  ny_array << christmas_array[1].split("_")
  holiday_hash[:winter][:new_years].each { |v| ny_array << "#{v.to_s}".capitalize }
  new_array_array = []
  party_hats_array = []
  ny_array.flatten.each {|x| new_array_array << "#{x}".capitalize }
  party_hats_array << new_array_array[2].split
  party_hats_array.flatten.each {|x| party_hats_array << "#{x}".capitalize }
  puts "  #{new_array_array[0]} #{new_array_array[1]} #{party_hats_array[1]} #{party_hats_array[2]}"
  summer_array = []
  holiday_hash[:summer].each { |k, v| summer_array << "#{k.to_s}:".capitalize }
  summer_array << summer_array[0].split("_")
  summer_array.flatten.each {|x| summer_array << "#{x}".capitalize }
  holiday_hash[:summer][:fourth_of_july].each { |v| summer_array << "#{v.to_s}".capitalize }
  bbq_array = []
  bbq_array_two = []
  bbq_array << summer_array[7].split(//)
  bbq_array.flatten.each { |x| bbq_array_two << "#{x}".capitalize}
  puts "  #{summer_array[3]} #{summer_array[4]} #{summer_array[5]} #{summer_array[6]}, #{bbq_array_two.join}"
  fall_array = []
  holiday_hash[:fall].each { |k, v| fall_array << "#{k.to_s}:".capitalize }
  holiday_hash[:fall][:thanksgiving].each { |v| fall_array << "#{v.to_s}".capitalize }
  puts "  #{fall_array[0]} #{fall_array[1]}"
  spring_array = []
  holiday_hash[:spring].each { |k, v| spring_array << "#{k.to_s}:".capitalize }
  spring_array << spring_array[0].split("_")
  spring_array.flatten.each {|x| spring_array << "#{x}".capitalize }
  puts "  #{spring_array[3]} #{spring_array[4]} #{bbq_array_two.join}"
end


def all_holidays_with_bbq(holiday_hash)
new_array = []
holiday_hash[:summer].each_pair do |k, v|
  if v.include?("BBQ")
    new_array << k
  end
  end
  holiday_hash[:winter].each_pair do |k, v|
    if v.include?("BBQ")
      new_array << k
    end
    end
    holiday_hash[:fall].each_pair do |k, v|
      if v.include?("BBQ")
        new_array << k
      end
      end
      holiday_hash[:spring].each_pair do |k, v|
        if v.include?("BBQ")
          new_array << k
        end
        end
return new_array

  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"

end
