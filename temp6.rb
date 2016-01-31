







# ########################################################

# def all_holidays_with_bbq(holiday_hash)
#   bbq_array = []
#   holiday_hash.each do |season, holiday|
#     holiday.each do |holiday_key, supplies|
#         supplies.select do |item| 
#           if item == "BBQ";
#           bbq_array << holiday_key
#           else
#           end
#         end
#       end
#     puts "#{bbq_array}"
#   end
# end

# ########################################################

# def all_holidays_with_bbq(holiday_hash)
#   bbq_array = [] 
#   not_bbq = [] 
#   hkstring = ""
#   i = 0
#   asdf = []

#   holiday_hash.each do |season, holiday|
#     holiday.each do |holiday_key, supplies|
#       hkstring = ":#{holiday_key}"
#       hk = holiday_key
#             # holiday[holiday_key][supplies].collect! do |item| 
#             supplies.select do |item| 
#               if item == "BBQ"; 
#                 bbq_array << hk
#               elsif item =! "BBQ"
#                 not_bbq << hk
#           end
#         puts "bbq: #{bbq_array}"
#       end
#     end
#   end
# end

# ########################################################


# ########################################################

# def all_holidays_with_bbq(holiday_hash)
#   bbq_array = []  
#   hkstring = ""
#   i = 0

#   holiday_hash.each do |season, holiday|
#     holiday.each do |holiday_key, supplies|
#       hkstring = ":#{holiday_key}"
#         bbq_array << hkstring
#         puts bbq_array
#         while i < supplies.length do
#             supplies.collect! do|item| 
#               if supplies[i] == "BBQ"; 
#                 return hkstring
#               else
#                 return "shit !!!"
#               end
#             i += 1
#           end
#         puts bbq_array
#       end
#     end
#   end
# end

# ########################################################
