def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  holiday_hash.collect do|season,holidays|
    puts "#{season}:".capitalize
    holidays.each do |holidays,supplies|
    #puts "#{holidays}:".capitalize
    #print "#{supplies}"
    #holidays_array = []
    #holidays_array << "#{holidays}:".capitalize!
    binding.pry
    #if holidays == :christmas || holidays == :new_years || holidays == :fourth_of_july || holidays == :thanksgiving || holidays == :memorial_day
      supplies.each do |supplies|
        #supplies = []
        #puts "  #{holidays}: #{supplies}".capitalize
        #binding.pry
        #supplies << "#{supplies}"
        #supplies << (",")
                  end
        #b = "#{holidays}: ".capitalize
        #binding.pry
        #supplies.unshift (b)
        #puts supplies
        #binding.pry
                  end
        #return c
        #binding.pry
                  end
end
