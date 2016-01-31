require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter][:christmas] << supply
  holiday_hash[:winter][:new_years] << supply
end
 
def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] = supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash.keys { |k| if k == season; holiday_hash[k][holiday_name] = holiday_name end }
  holiday_hash[season][holiday_name] = supply_array
  return holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
  h_ary2 = []
  h_str = ""
  h_pr = ""
  s = ""
  i = []
  holiday = {}
  holiday_hash.each do |season,hol_array| 
    s = season.to_s
    s.capitalize!
    holiday = hol_array
    holiday.each do |attribute, value|
        h_str = attribute.to_s  #----turn attribute to string
          h_ary = h_str.split("_")     #----.split the string to array
            h_ary.each do |z| z.capitalize! end  #----iterate over ary & capitalize
              h_pr = h_ary.join(" ") #----.join the ary back into a string
                i = value.join(", ")
        puts "#{s}:"
        puts "  #{h_pr}: "+"#{i}"
     end
  end
 end

holiday_hash2 =
  {
    :winter => {
      :new_years => ["Party Hats"],
      :christmas => ["Lights", "Wreath"]
      
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

all_supplies_in_holidays(holiday_hash2)

# You'll need to capitalize both words in a given holiday's name. 
# If you call "new years".capitalize!. It will return "New years". 
# In order to capitalize both words, you'll need to .split the string 
# into an array and iterate over that array to .capitalize! each word in it. 
# Then, you'll need to .join the array back into a string.

def all_holidays_with_bbq(holiday_hash)
  bbq_ary = []

  holiday_hash.each do |season, holiday| 

    holiday.each do |attribute, value| if value == "BBQ"; 
      bbq_ary << attribute
        end
        puts bbq_ary
    end
  end
end



