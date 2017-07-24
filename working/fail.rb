require 'pry'

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, season_details_hash|
    indent = "  "
    items = ""
    season_name = ""
    season_name = season.to_s
    season_name.capitalize!
    season_name << ":"
    puts season_name
    season_details_hash.each do |holiday, holiday_supplies|
      holiday_name = ""
      holiday_name = holiday.to_s
      holiday_name.split(/_/)
      holiday_name.capitalize!
      holiday_name << ": "
      holiday_name = indent.concat(holiday_name)
      holiday_supplies.each { |item| items << item << ", "}

      binding.pry
    end

  end

end

puts "#{holiday_name}"
