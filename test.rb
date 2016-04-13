require 'pry'

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  holiday_hash.each do |k, v|
    puts k.to_s.capitalize! + ":" #season
    v.each do |k, v|
      print "  "


      print k.to_s.split("_").map(&:capitalize).join(" ") + ": "


      #binding.pry
      print v.join(", ") + "\n"
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

=begin
def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  holiday_hash.each do |k, v|
    puts k.to_s.capitalize! + ":"
    v.each do |k, v|
      print "  "
      print k.to_s.capitalize! + ": " 
      #binding.pry
      print v.join(", ") + "\n"
    end
  end  
end
=end