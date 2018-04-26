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
   holiday_hash[:winter].collect do |holiday, decor|
     decor.push(supply)
   end
 end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring].collect do |holiday, decor|
    decor.push(supply)
  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
end

def all_winter_holiday_supplies(holiday_hash)
    # return an array of all of the supplies that are used in the winter season
  all_winter_decor=[]

  holiday_hash[:winter].each do |holiday, decor|
    decor.each do|supplies|
      all_winter_decor.push(supplies)
     end
  end
  all_winter_decor
end

#helper method
def split(string)
  new = " "
  if string.include?('_')
    words = string.split('_')
      new = words.collect do |word|
        word.capitalize
    end
  new.join(" ")
  end
end


def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |items, day|
    puts "#{items.capitalize}:"
      day.each do |holiday, list|
        string_holiday =holiday.to_s
          if (string_holiday).include?('_')
        puts "  #{split(string_holiday)}: #{list.join(", ")}"
          else
        puts "  #{string_holiday.capitalize}: #{list.join(", ")}"
          end
      end
    end
  end

  def all_holidays_with_bbq(holiday_hash)
    # return an array of holiday names (as symbols) where supply lists
    # include the string "BBQ"
   bbq_array = []

    holiday_hash.each do |seasons, holiday|
      holiday.each do |event, decor|
        if decor.include? "BBQ"
          bbq_array.push(event)
        end
      end
    end
    bbq_array
    end
