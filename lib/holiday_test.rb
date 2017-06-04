require 'pry'

  holiday_hash = {

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



  def all_holidays_with_bbq(holiday_hash)
    # return an array of holiday names (as symbols) where supply lists
    # include the string "BBQ"
    holiday_hash.each do |season, holidays|
      holidays.each do |holiday, supplies|
        has_bbq = []
          if supplies.include?("BBQ")
            has_bbq << holiday
          end
        has_bbq.flatten
      end
    end
  end

all_holidays_with_bbq(holiday_hash)
