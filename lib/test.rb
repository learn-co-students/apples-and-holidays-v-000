require 'pry'

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

def hello
  #some code here
  puts 'hello'
  holiday_supplies[:summer][:fourth_of_july][1]
  binding.pry
end

hello(holiday_supplies)
