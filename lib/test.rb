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

holiday_hash.each do |season, holiday_h|
  puts "#{season}:".capitalize
  holiday_h.each do |holiday, supply_array|
    puts "#{holiday.to_s.split("_").map {|word| word.capitalize}}: "
    puts " #{supply_array.join(", ")}"
  end
end


# This is the array we will be passing into the remove_strawberry method
# contacts = {
#   "Jon Snow" => {
#     name: "Jon",
#     email: "jon_snow@thewall.we", 
#     favorite_ice_cream_flavors: ["chocolate", "vanilla"]
#   },
#   "Freddy Mercury" => {
#     name: "Freddy",
#     email: "freddy@mercury.com",
#     favorite_ice_cream_flavors: ["strawberry", "cookie dough", "mint chip"]
#   }
# }

contacts.each do |person, contact_details_hash|
  contact_details_hash.each do |attribute, data|
    if attribute == :favorite_ice_cream_flavors
      data.delete_if { |ice_cream| ice_cream == "strawberry"}
    end
  end
end


holiday_hash[:winter].values.flatten

holiday_hash.map do |seasons, holidays|
  holidays.map do |holiday, supply|
    if supply.include?("BBQ")
      holiday
    end
    holidays.flatten
  end
end