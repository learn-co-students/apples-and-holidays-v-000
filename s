
[1mFrom:[0m /home/infopro94-20455/code/labs/apples-and-holidays-v-000/lib/holiday.rb @ line 70 Object#add_supply_to_memorial_day:

    [1;34m53[0m: [32mdef[0m [1;34madd_supply_to_memorial_day[0m(holiday_hash, supply) [1;34m#write a method that adds a supply to Memorial Day[0m
    [1;34m54[0m:   {
    [1;34m55[0m:     [33m:winter[0m => {
    [1;34m56[0m:       [33m:christmas[0m => [[31m[1;31m"[0m[31mLights[1;31m"[0m[31m[0m, [31m[1;31m"[0m[31mWreath[1;31m"[0m[31m[0m],
    [1;34m57[0m:       [33m:new_years[0m => [[31m[1;31m"[0m[31mParty Hats[1;31m"[0m[31m[0m]
    [1;34m58[0m:     },
    [1;34m59[0m:     [33m:summer[0m => {
    [1;34m60[0m:       [33m:fourth_of_july[0m => [[31m[1;31m"[0m[31mFireworks[1;31m"[0m[31m[0m, [31m[1;31m"[0m[31mBBQ[1;31m"[0m[31m[0m]
    [1;34m61[0m:     },
    [1;34m62[0m:     [33m:fall[0m => {
    [1;34m63[0m:       [33m:thanksgiving[0m => [[31m[1;31m"[0m[31mTurkey[1;31m"[0m[31m[0m]
    [1;34m64[0m:     },
    [1;34m65[0m:     [33m:spring[0m => {
    [1;34m66[0m:       [33m:memorial_day[0m => [[31m[1;31m"[0m[31mBBQ[1;31m"[0m[31m[0m]
    [1;34m67[0m:     }
    [1;34m68[0m:   }
    [1;34m69[0m:   holiday_hash.each [32mdo[0m |season, holiday|
 => [1;34m70[0m:     binding.pry
    [1;34m71[0m:     [32mif[0m season == [33m:spring[0m
    [1;34m72[0m: 
    [1;34m73[0m:       holiday_hash[season].push(supply)
    [1;34m74[0m: 
    [1;34m75[0m:        [32mend[0m
    [1;34m76[0m:     [32mend[0m
    [1;34m77[0m: [32mend[0m

