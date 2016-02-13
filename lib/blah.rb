holiday_hash = {
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

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, values|
      puts "#{season.capitalize}:"
      values.each do |holiday, holiday_items|
        puts "   " + holiday.to_s.split('_').map {|holiday2| holiday2.capitalize }.join(' ') + ": " + holiday_items.join(", ")  

  end 
end 
end

all_supplies_in_holidays(holiday_hash)
