require 'csv'

puts "Importing breads..."
CSV.foreach(Rails.root.join("breads.csv"), headers: true) do |row|
  Bread.create! do |bread|
    bread.id = row[0]
    bread.name = row[1]
 . end
end

puts "Importing spreads..."
CSV.foreach(Rails.root.join("spreads.csv"), headers: true) do |row|
  Spread.create! do |spread|
    spread.name = row[0]
    spread_id = row[2]
  end
end