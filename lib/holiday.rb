require 'pry'

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


def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter][:christmas] << supply
  holiday_hash[:winter][:new_years] << supply

end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten #"grabs" all the values
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, data|
    puts "#{season}:".capitalize #.to_s.capitalize
    data.each do |holiday, supplies|
      holiday = holiday.to_s.split('_').map(&:capitalize).join(' ')
      # holidays = holidays.collect {|the_holiday| the_holiday.capitalize }.join(" ")
      # supplies = supplies.join(", ")
      puts "  " + "#{holiday}: "+ "#{supplies.join(', ')}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  answer = []
  holiday_hash.each do |season, celebration_hash| 
    celebration_hash.each {|holiday, item| answer << holiday if item.include?('BBQ') }
  end
  answer
end







