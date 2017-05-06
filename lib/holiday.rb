require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter].each do |holiday, supplies|
    supplies << supply
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  winter_supplies = []
  holiday_hash[:winter].each do |holiday, supplies|
    winter_supplies << supplies
  end
  winter_supplies.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, val|
  puts "#{season.capitalize}:"
  val.each do |holiday, supplies|
    supply_str=""
    list = ''
      holiday_name = holiday.to_s.gsub("_", " ")
      holiday_name=holiday_name.split
      holiday_name.each {|i| i=i.capitalize!+" "}
      holiday_name=holiday_name.join(" ")
      supply_str = "  #{holiday_name}:"
      supplies.each {|i| list=list+", "+i}
      list[0]=''
      supply_str=supply_str+"#{list}"
      puts supply_str
    end
  end
end




def all_holidays_with_bbq(holiday_hash)
  bbq_holidays=[]
  holiday_hash.each do |season, holidays|
    holidays.each do |holiday, supplies|
      if supplies.include? ("BBQ")
        bbq_holidays << holiday
      end
    end
  end
  bbq_holidays

  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"

end
