require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
@store4 = Store.create(
  name: "Surrey",
  annual_revenue: 224000, 
  mens_apparel: false, 
  womens_apparel: true
  )
puts @store4.errors.full_messages

@store5 = Store.create(
  name: "Whistler",
  annual_revenue: 1900000, 
  mens_apparel: true, 
  womens_apparel: false
  )
puts @store5.errors.full_messages

@store6 = Store.create(
  name: "Yaletown",
  annual_revenue: 430000, 
  mens_apparel: true, 
  womens_apparel: true
  )

puts @store6.errors.full_messages



@mens_stores = Store.where(mens_apparel:true, womens_apparel: false)
@mens_stores.each do |store|
  puts "Location: #{store.name} -- Annual Revenue: #{store.annual_revenue}"
end

stores_under_1M = Store.where("womens_apparel = true AND annual_revenue < 1000000")
stores_under_1M.each do |store|
  puts "Location: #{store.name} -- Annual Revenue: #{store.annual_revenue}"
end
