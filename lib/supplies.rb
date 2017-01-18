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

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  item_array =[]
  holiday_hash.collect do|season,holidays|
    puts "#{season}:".capitalize
    #binding.pry
    if holidays == :christmas || holidays == :new_years || holidays == :fourth_of_july || holidays == :thanksgiving || holidays == :memorial_day
      supplies.each do |item|
       #item_array = []
       item_array << "#{item} ,"
       #supplies.array.push (",")
      #binding.pry
                  end
      b = "#{holidays}: ".capitalize
      #olidays.each do |holidays,supplies|
      binding.pry
      item_array.unshift(b)
      #binding.pry
      print item_array.join
      #http://stackoverflow.com/questions/5018633/what-is-the-difference-between-print-and-puts
      #git remote -v
                  end
                  end
end
#key_lesson from this exercise
20:42:51] (master) apples-and-holidays-v-000
// ♥ irb
2.3.1 :001 > holiday = :new_years
 => :new_years
2.3.1 :002 > holiday.to_s.split("_")
 => ["new", "years"]
2.3.1 :003 > holiday.to_s.split("_").capitalize!
NoMethodError: undefined method `capitalize!' for ["new", "years"]:Array
        from (irb):3
        from /usr/local/rvm/rubies/ruby-2.3.1/bin/irb:11:in `<main>'  
2.3.1 :004 > array = holiday.to_s.split("_")
 => ["new", "years"]
2.3.1 :005 > array.capitalize!
NoMethodError: undefined method `capitalize!' for ["new", "years"]:Array
        from (irb):5
        from /usr/local/rvm/rubies/ruby-2.3.1/bin/irb:11:in `<main>'
2.3.1 :006 > array.capitalize
NoMethodError: undefined method `capitalize' for ["new", "years"]:Array
        from (irb):6
        from /usr/local/rvm/rubies/ruby-2.3.1/bin/irb:11:in `<main>'
2.3.1 :007 > ^C
2.3.1 :007 > array.each {|value| value.capitalize!}
 => ["New", "Years"]
2.3.1 :008 > array
 => ["New", "Years"]
2.3.1 :009 > exit
