
[1mFrom:[0m /home/skantor/apples-and-holidays-v-000/lib/holiday.rb @ line 73 Object#all_supplies_in_holidays:

    [1;34m57[0m: [32mdef[0m [1;34mall_supplies_in_holidays[0m(holiday_hash)
    [1;34m58[0m:   [1;34m# iterate through holiday_hash and print items such that your readout resembles:[0m
    [1;34m59[0m:   [1;34m# Winter:[0m
    [1;34m60[0m:   [1;34m#   Christmas: Lights, Wreath[0m
    [1;34m61[0m:   [1;34m#   New Years: Party Hats[0m
    [1;34m62[0m:   [1;34m# Summer:[0m
    [1;34m63[0m:   [1;34m#   Fourth Of July: Fireworks, BBQ[0m
    [1;34m64[0m:   [1;34m# etc.[0m
    [1;34m65[0m:     holiday_hash.each [32mdo[0m |season, holiday|
    [1;34m66[0m:       formatted = (season.to_s+[31m[1;31m"[0m[31m:[1;31m"[0m[31m[0m)
    [1;34m67[0m:       puts formatted.capitalize
    [1;34m68[0m:       holiday.each [32mdo[0m |hd, value|
    [1;34m69[0m:         str = hd.id2name
    [1;34m70[0m:         [32mif[0m str.include?([31m[1;31m"[0m[31m_[1;31m"[0m[31m[0m)
    [1;34m71[0m:           str.sub! [31m[1;31m"[0m[31m_[1;31m"[0m[31m[0m, [31m[1;31m"[0m[31m [1;31m"[0m[31m[0m
    [1;34m72[0m:           lst = str.split()
 => [1;34m73[0m:           binding.pry
    [1;34m74[0m:           lst[[1;34m1[0m] = lst[[1;34m1[0m].capitalize
    [1;34m75[0m:           str = lst.join([31m[1;31m"[0m[31m [1;31m"[0m[31m[0m)
    [1;34m76[0m:         [32mend[0m
    [1;34m77[0m:         str = str + [31m[1;31m"[0m[31m:[1;31m"[0m[31m[0m
    [1;34m78[0m:         val = value.join([31m[1;31m"[0m[31m, [1;31m"[0m[31m[0m)
    [1;34m79[0m:         final = [31m[1;31m"[0m[31m  [1;31m"[0m[31m[0m + str.capitalize + [31m[1;31m"[0m[31m [1;31m"[0m[31m[0m + val
    [1;34m80[0m:         puts final
    [1;34m81[0m:       [32mend[0m 
    [1;34m82[0m:     [32mend[0m 
    [1;34m83[0m: [32mend[0m

