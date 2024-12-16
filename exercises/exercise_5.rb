require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

total_revenue = Store.sum(:annual_revenue)
puts "Total Revenue for all stores: $#{total_revenue}"

average_revenue = Store.average(:annual_revenue)
puts "Average Annual Revenue for all stores: $#{average_revenue}"

million_plus_stores_count = Store.where("annual_revenue >= ?", 1000000).count
puts "Number of stores generating $1M or more in annual sales: #{million_plus_stores_count}"
