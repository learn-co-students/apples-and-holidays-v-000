require 'pry'

#newname = []
name = "new_years_day"
newname = name.split("_")

newname.map! do |i| i.capitalize! end
binding.pry
puts newname



#############################################################################
# {
#     :winter=>{
#       :christmas=>["Lights", "Wreath"], 
#       :new_years=>["Party Hats"]
#   }, 
#     :summer=>{
#       :fourth_of_july=>["Fireworks", "BBQ"]
#   }, 
#     :fall=>{
#       :thanksgiving=>["Turkey"], 
#       :columbus_day=>["Flags", "Parade Floats", "Italian Food"]
#   }, 
#     :spring=>{
#       :memorial_day=>["BBQ"]}
# }

# {:winter=>{:christmas=>["Lights", "Wreath"], :new_years=>["Party Hats"], :valentines_day=>["Cupid Cut-Out", "Candy Hearts"]}, :summer=>{:fourth_of_july=>["Fireworks", "BBQ"]}, :fall=>{:thanksgiving=>["Turkey"], :columbus_day=>["Flags", "Parade Floats", "Italian Food"]}, :spring=>{:memorial_day=>["BBQ"]}}

#   {
#     :winter=>{
#       :christmas=>["Lights", "Wreath"], 
#       :new_years=>["Party Hats"]
#     }, 
#     :summer=>{
#       :fourth_of_july=>["Fireworks", "BBQ"]
#     }, 
#     :fall=>{
#       :thanksgiving=>["Turkey"]
#     }, 
#     :spring=>{
#       :memorial_day=>["BBQ"]
#     }, 
#       :columbus_day=>["Flags", "Parade Floats", "Italian Food"]
#   }




# holiday_hash =
#   {
#     :winter => {
#       :christmas => ["Lights", "Wreath"],
#       :new_years => ["Party Hats"]
#     },
#     :summer => {
#       :fourth_of_july => ["Fireworks", "BBQ"]
#     },
#     :fall => {
#       :thanksgiving => ["Turkey"]
#     },
#     :spring => {
#       :memorial_day => ["BBQ"]
#     }
#   }


# holiday_hash[:summer][:fourth_of_july] << "Beer Fest"
# puts holiday_hash[:summer]


# #############################################################################
# def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
#   # code here
#   # remember to return the updated hash
#   # Write a method that adds a new holiday and its associated supplies to any season.
#       supply_array.each do |i| holiday_hash[:season][:holiday_name] << i end

#       # holiday_hash.each do |k,v| if k == season
#       #   then v = holiday_name 
#       # end
#       # holiday_hash[k] = v
#       # holiday_hash[k][v] = supply_array 

#   # puts holiday_hash
#   puts holiday_hash[:summer]
# end
#############################################################################
# hash = {first: "first value!", second: "second value!"}
# hash[:third] = "third value!"
 
# puts hash
#  > {first: "first value!", second: "second value!", third: "third value!"}



#   season = ":summer"
#   holiday_name = "Beer Fest"
#   supplies = {["cups", "chips", "salsa", "beer"]}


# add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)


# {:winter=>{:christmas=>["Lights", "Wreath"], 
#   :new_years=>["Party Hats"]}, 
#   :summer=>{:fourth_of_july=>["Fireworks", "BBQ"]}, 
#   :fall=>{:thanksgiving=>["Turkey"]}, 
#   :spring=>{:memorial_day=>["BBQ"]}, 

#   ":summer"=>[]}



