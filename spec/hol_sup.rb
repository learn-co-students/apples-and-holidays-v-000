seasons = []
sea_holidays = []
holidays = []
sp_supplies = ""
hol_supplies = []

hol_sup.each {|season, holiday, supplies| seasons.push(season.id2name.capitalize + ":")
   hol_sup[season].each { |holiday, supplies| 
    if holiday.inspect == ":new_years"
      holidays.push("New Years: ")
    elsif holiday.inspect == ":fourth_of_july"
      holidays.push("Fourth of July: ")
    elsif holiday.inspect == ":memorial_day"
      holidays.push("Memorial Day: ")    
    else
      holidays.push(holiday.id2name.capitalize + ": ")
    end
    supplies.each{ |x| hol_supplies.push(sp_supplies << x + ", ")}
    }
  }

  hol_sup.each do |season, holidays|     
   puts season.id2name.capitalize + ": "
   holidays.each do |holiday, supplies|
      print "  " + holiday.id2name.split("_").map(&:capitalize)*" " + ": "
      supplies.each do |x|
          unless x.equal? supplies.last
             print x + ", "
          else
             puts x
       end
     end
   end
end