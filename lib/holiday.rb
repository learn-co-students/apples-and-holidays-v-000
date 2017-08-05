require 'pry'
#1 method that returms the second supply for the Fourth of July
def second_supply_for_fourth_of_july(holiday_hash)
  {
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

  holiday_hash[:summer][:fourth_of_july][1]
end

#2 method that adds adds a supply to both Winter holidays.
def add_supply_to_winter_holidays(holiday_hash, supply)
  {
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

  holiday_hash.each do |season, holidays|
     if season == :winter
       holidays.each do |holiday, supplies|
         holiday_hash[season][holiday].push(supply)

      end
        end
      end
end

# #3 memorial_day methods that adds a supply to Memorial Day
def add_supply_to_memorial_day(holiday_hash, supply) #write a method that adds a supply to Memorial Day
  {
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

   holiday_hash.select do |season, holiday|
      if season == :spring
        holiday.each do |holiday, supplies|
          holiday_hash[season][holiday].push(supply)

      end
     end
  end
end

#4 write a new method that adds a new holiday and its associated supplies to any season
def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
{
  :winter => {
    :christmas => ["Lights", "Wreath"],
    :new_years => ["Party Hats"]
  },
  :summer => {
    :fourth_of_july => ["Fireworks", "BBQ"]
  },
  :fall => {
    :thanksgiving => ["Turkey"],
  },
  :spring => {
    :memorial_day => ["BBQ"]
  }
}

holiday_supplies[season][holiday_name]=(supply_array)
    holiday_supplies
 end

#6
def all_winter_holiday_supplies(holiday_hash)
# return an array of all of the supplies that are used in the winter season
 {
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

winter_supplies = []
holiday_hash.collect do |season, holidays|
  if season == :winter
      holidays.collect do |holiday, supply|
      winter_supplies<<supply
      end
    end
  end
    winter_supplies.flatten!
end

#7
def all_supplies_in_holidays(holiday_hash)
#   # iterate through holiday_hash and print items such that your readout resembles
{
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
#   # Winter:
#   #   Christmas: Lights, Wreath
#   #   New Years: Party Hats
#   # Summer:
#   #   Fourth Of July: Fireworks, BBQ
#   # etc.
#
# end
	holiday_hash.each do |season, holidays|
    puts "#{season.to_s.capitalize!}:"
    holidays.each do |holidays, supplies|
      	puts "  #{holidays.to_s.tr("_"," ").split(' ').map {|word| word.capitalize}.join(' ')}: #{supplies.join(", ")}"
		end
	end
end

#8
def all_holidays_with_bbq(holiday_hash)
#  return an array of holiday names (as symbols) where supply lists include the string "BBQ"
   bbq_holidays = []
   holiday_hash.map do |season, holidays|
           holidays.map do |holiday, supplies|
             if supplies.include?("BBQ")
               bbq_holidays << holiday
           end
         end
     end
     bbq_holidays
 end
