def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  holiday_hash.each do |season, season_holiday_hash|
    season_array = season.to_s.split(" ")
    season_array.each do |word|
      word.capitalize!
      season_string = season_array.join(" ")
      puts "#{season_string}:"
      season_holiday_hash.each do |holiday, supplies|
         holiday_array = holiday.to_s.split("_")
         holiday_array.each do |word|
           word.capitalize!
           holiday_string = holiday_array.join(" ")
           holiday_string << ":"
           supply_string = supplies.join(", ")
           puts "  #{holiday_string} #{supply_string}"
         end
       end
     end
   end
end
