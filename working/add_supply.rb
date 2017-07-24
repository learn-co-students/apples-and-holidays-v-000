def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  add_item = String.new
  new_item = String.new
  add_item = " "
  new_item = "BBQ"
  add_item.concat(supply)
  new_item.concat(add_item)
  holiday_hash.each do |season, season_details_hash|
    if season == :spring
      season_details_hash.each do |holiday, holiday_supplies|
        if holiday_supplies.include?("BBQ")
          holiday_supplies.each do |string|
            if string.index("BBQ")
              index = string.index("BBQ")
              holiday_supplies[index].replace(new_item)
              binding.pry
            end
          end
        end
      end
    end
  end
end

programmer_hash[:yukihiro_matsumoto] = {}
programmer_hash[:yukihiro_matsumoto][:known_for] = "Ruby"
programmer_hash[:yukihiro_matsumoto][:languages] = ["LISP, C"]
programmer_hash

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  holiday_hash.each do |season, season_details_hash|
    season_name = season.to_s
    season_name.capitalize!
    season_name << ":"
    puts season_name
      season_details_hash.each do |holiday, holiday_supplies|
        holiday_name = holiday.to_s
        holiday_name.split(/_/)
        holiday_name.capitalize!
        holiday_name << ": "
        holiday_name
        #binding.pry
        puts "  #{holiday_name}#{holiday_supplies.join(", ")}"
      end
  end
end
