
[1mFrom:[0m /home/kim900180/apples-and-holidays-v-000/lib/holiday.rb @ line 65 Object#all_supplies_in_holidays:

    [1;34m56[0m: [32mdef[0m [1;34mall_supplies_in_holidays[0m(holiday_hash)
    [1;34m57[0m:   [1;34m# iterate through holiday_hash and print items such that your readout resembles:[0m
    [1;34m58[0m:   [1;34m# Winter:[0m
    [1;34m59[0m:   [1;34m#   Christmas: Lights, Wreath[0m
    [1;34m60[0m:   [1;34m#   New Years: Party Hats[0m
    [1;34m61[0m:   [1;34m# Summer:[0m
    [1;34m62[0m:   [1;34m#   Fourth Of July: Fireworks, BBQ[0m
    [1;34m63[0m:   [1;34m# etc.[0m
    [1;34m64[0m:   holiday_hash.each [32mdo[0m |season, holiday_name|
 => [1;34m65[0m:     binding.pry
    [1;34m66[0m:     season_hash = season.to_s.capitalize!
    [1;34m67[0m:     holiday_hash = [31m[1;31m"[0m[31m[1;31m"[0m[31m[0m
    [1;34m68[0m:     holiday_array = []
    [1;34m69[0m:     [32mif[0m holiday_name.keys.to_s.include?([31m[1;31m"[0m[31m_[1;31m"[0m[31m[0m)
    [1;34m70[0m:       holiday_array = holiday_name.to_s.split([31m[1;31m"[0m[31m_[1;31m"[0m[31m[0m)
    [1;34m71[0m:       holiday_array[[1;34m0[0m].capitalize!
    [1;34m72[0m:       holiday_array[[1;34m1[0m].capitalize!
    [1;34m73[0m:       holiday_hash = holiday_array.join([31m[1;31m"[0m[31m [1;31m"[0m[31m[0m)
    [1;34m74[0m:     [32melse[0m
    [1;34m75[0m:       holiday_hash = holiday_name
    [1;34m76[0m:     [32mend[0m
    [1;34m77[0m:     puts [31m[1;31m"[0m[31m#{season_hash}[0m[31m: #{holiday_hash}[0m[31m[1;31m"[0m[31m[0m
    [1;34m78[0m:     [1;34m# holiday_name.each do |attribute, value|[0m
    [1;34m79[0m:     [1;34m#   puts "#{attribute.to_s.capitalize!}: #{value}"[0m
    [1;34m80[0m:     [1;34m# end[0m
    [1;34m81[0m:   [32mend[0m
    [1;34m82[0m: [32mend[0m

