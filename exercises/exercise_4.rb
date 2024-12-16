require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

Store.create(name: "Surrey", annual_revenue: 224000, womens_apparel: true, mens_apparel: false)
Store.create(name: "Whistler", annual_revenue: 1900000, womens_apparel: false, mens_apparel: true)
Store.create(name: "Yaletown", annual_revenue: 430000, womens_apparel: true, mens_apparel: true)

@mens_stores = Store.where(mens_apparel: true)

@mens_stores.each do |store|
  puts "Name: #{store.name}, Annual Revenue: #{store.annual_revenue}"
end

@womens_stores_under_1m = Store.where("womens_apparel = ? AND annual_revenue < ?", true, 1000000)

@womens_stores_under_1m.each do |store|
  puts "Name: #{store.name}, Annual Revenue: #{store.annual_revenue}"
end
