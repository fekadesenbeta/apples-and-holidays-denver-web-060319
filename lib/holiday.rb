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

def second_supply_for_fourth_of_july(holiday_hash)
 holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  
  holiday_hash[:winter][:christmas] << supply
  holiday_hash[:winter][:new_years] << supply
  
end


def add_supply_to_memorial_day(holiday_hash, supply)
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  
  holiday_hash[:spring][:memorial_day] << supply
    
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
   #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  # remember to return the updated hash
  
  holiday_hash[season][holiday_name] = supply_array
holiday_hash

end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  
  holiday_hash[:winter].values.flatten
  
 end
 
 

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },

holiday_hash.each do |season, data|
  puts "#{season}:".capitalize!
    data.each do |holiday, supplies|
      final_output = holiday.to_s.split("_").each {|x| x.capitalize!}.join(" ")
    string = "  " + "#{final_output}: " + supplies.join(", ")
    puts string 
  end
 end
end 

all_supplies_in_holidays(holiday_hash)

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
end







