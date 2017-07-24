require 'pry'
def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, season_details_hash|
    season_name = season.to_s
    season_name.capitalize!
    puts "#{season_name}:"
    season_details_hash.each do |holiday, holiday_supplies|
      holiday_cap_array = []
      holiday_name = holiday.to_s
      holiday_name.gsub!(/[_]/," ")
      holiday_name.capitalize!
      holiday_name = holiday_name.split(" ")
      holiday_name.collect do |word|
        word.capitalize!
        holiday_cap_array.push(word)
      end
      holiday_cap_array = holiday_cap_array.join(" ")
      puts "  #{holiday_cap_array}: #{holiday_supplies.join(", ")}"
    end
  end
end
