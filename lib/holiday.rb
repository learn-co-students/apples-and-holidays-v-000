require 'pry'

  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
 def second_supply_for_fourth_of_july(holiday_hash)
   holiday_hash.collect do |season, holiday|
      holiday.collect do |name, elem|
        if name == :"fourth_of_july"
          return elem[1]
        end
      end
    end
 end



  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash.collect do |season, holiday|
    if season == :winter
      holiday.collect do |name, day|
          day.push("Balloons")
        end
    end
  end
end


  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
def add_supply_to_memorial_day(holiday_hash, supply)
    holiday_hash.collect do |season, holiday|
      holiday.collect do |name, elem|
        if name == :"memorial_day"
          elem.push("Grill", "Table Cloth")
        end
      end
    end
end


  # code here
  # remember to return the updated hash
def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
    holiday_hash[:fall]={:columbus_day =>["Flags", "Italian Food", "Parade Floats"]}
    holiday_hash[:winter]={:valentines_day =>["Candy Hearts", "Cupid Cut-Out"]}
end


  # return an array of all of the supplies that are used in the winter season
  def all_winter_holiday_supplies(holiday_hash)
	winter_day = []
  holiday_hash.collect do |season, holiday|
    if season == :winter
      holiday.collect do |name, day|
      winter_day << day
        #day
      end
      #winter_day
     end
       #winter_day
    end
      winter_day.flatten
  end


  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.

def all_supplies_in_holidays(holiday_hash)
    holiday_hash.collect do |season, holiday|
      season = season.to_s.capitalize
      puts "#{season}: "
      holiday.collect do |name, elem|
        i = 0
         while i < name.length
            name = name.to_s.split(" ")
            name.caplitalize.join(" ")
            i += 1
          end
          puts "#{name.capitalize}: "
          elem.collect do |supply|
            i = 0
            while i < supply.length
              elem = elem.to_s.split(" ")
              elem.caplitalize.join(" ")
              i += 1
          end
          end
      end
    end
end
   


#    holiday_hash.chomp.split(" ").each{|word| word.capitalize!}.join(" ")
# end



  ####below

# def all_supplies_in_holidays(holiday_hash)
#    holiday_hash.collect do |season, holiday|
#      puts "#{season.capitalize}" + ":"
#      holiday.collect do |name, elem|
#    		names = name.to_s.split("_")
#    		elem.collect do |supply|
#         supply.to_s
#    		  supply.capitalize
#    		puts "  #{names.join(", ")}" + ": " + "#{supply}"
#       end
#     end
#   end
# end

###########above


  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
def all_holidays_with_bbq(holiday_hash)
	bbq = []
   holiday_hash.collect do |season, holiday|
      holiday.collect do |name, elem|
        if elem.include?("BBQ")
          bbq.push(name)
        end
        #bbq
    end
    #bbq
 end
 bbq
end







