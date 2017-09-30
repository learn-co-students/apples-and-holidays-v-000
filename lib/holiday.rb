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
  holiday_hash[:winter][:christmas].push(supply)
  holiday_hash[:winter][:new_years].push(supply)

end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day].push(supply)

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season]={holiday_name=>supply_array}

end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten

end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season,next_hash|

    puts "#{season.capitalize}:"
      next_hash.each do |holiday, array_of_supplies|
            string=""
            if holiday.to_s.include? "_"
              new_array = holiday.to_s.split("_")
                i=0
                  while i<new_array.length
                string = string + " " + new_array[i].capitalize
                i +=1
                  end
            else

              string = " " + holiday.to_s.capitalize
            end


        puts " #{string}: #{array_of_supplies.join(", ")}"
      end
end
end


def all_holidays_with_bbq(holiday_hash)
  array =[]
  holiday_hash.each do |season, next_hash|
    next_hash.each do |holiday,supplies|
      
      if supplies.include? "BBQ"
        array.push(holiday)
      end
    end
  end

 return array
end
