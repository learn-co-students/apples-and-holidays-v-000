require "pry"
def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  i=0
  holiday_hash.each do |season, holidays_h|
    puts season.to_s.capitalize+":"
    holidays_h.each do |holiday, supplies_hash|
      holidaysplit = holiday.to_s.split("_")
      holidaysplit.each do |word|
        word.capitalize!
      end
      puts "  "+holidaysplit.join(" ")+": "+supplies_hash.join(", ")
    end
  end
end
holiday_supplies = {
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
all_supplies_in_holidays(holiday_supplies)
