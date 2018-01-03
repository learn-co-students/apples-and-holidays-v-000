
[1mFrom:[0m /home/dbushey/apples-and-holidays-v-000/lib/holiday.rb @ line 82 Object#all_supplies_in_holidays:

    [1;34m60[0m: [32mdef[0m [1;34mall_supplies_in_holidays[0m(holiday_hash)
    [1;34m61[0m:   [1;34m# iterate through holiday_hash and print items such that your readout resembles:[0m
    [1;34m62[0m:   [1;34m# Winter:[0m
    [1;34m63[0m:   [1;34m#   Christmas: Lights, Wreath[0m
    [1;34m64[0m:   [1;34m#   New Years: Party Hats[0m
    [1;34m65[0m:   [1;34m# Summer:[0m
    [1;34m66[0m:   [1;34m#   Fourth Of July: Fireworks, BBQ[0m
    [1;34m67[0m:   [1;34m# etc.[0m
    [1;34m68[0m:   season_str = [31m[1;31m"[0m[31m[1;31m"[0m[31m[0m
    [1;34m69[0m:   holiday_str = [31m[1;31m"[0m[31m[1;31m"[0m[31m[0m
    [1;34m70[0m:   holiday_final = [31m[1;31m"[0m[31m[1;31m"[0m[31m[0m
    [1;34m71[0m:   holiday_arr = []
    [1;34m72[0m:   supplies_str = [31m[1;31m"[0m[31m[1;31m"[0m[31m[0m
    [1;34m73[0m: 
    [1;34m74[0m:   holiday_supplies.each [32mdo[0m |season, holidays|
    [1;34m75[0m:     season_str = season.to_s.capitalize!
    [1;34m76[0m:       holidays.each [32mdo[0m |holiday, supplies|
    [1;34m77[0m:         holiday_str = holiday.to_s
    [1;34m78[0m:         supplies_str = supplies.join([31m[1;31m"[0m[31m, [1;31m"[0m[31m[0m)
    [1;34m79[0m:         holiday_arr = holiday_str.split([31m[1;31m"[0m[31m_[1;31m"[0m[31m[0m)
    [1;34m80[0m:           holiday_arr_final = holiday_arr.map {|word| word.capitalize!}
    [1;34m81[0m:           holiday_final = holiday_arr_final.join([31m[1;31m"[0m[31m [1;31m"[0m[31m[0m)
 => [1;34m82[0m:             binding.pry
    [1;34m83[0m:             puts [31m[1;31m"[0m[31m#{season_str}[0m[31m:[1;31m"[0m[31m[0m
    [1;34m84[0m:             puts [31m[1;31m"[0m[31m  #{holiday_final}[0m[31m: #{supplies_str}[0m[31m[1;31m"[0m[31m[0m
    [1;34m85[0m: 
    [1;34m86[0m:       [32mend[0m
    [1;34m87[0m:     [32mend[0m
    [1;34m88[0m: [32mend[0m

