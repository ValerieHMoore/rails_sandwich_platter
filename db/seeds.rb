require 'csv'

puts "Importing breads..."
CSV.foreach(Rails.root.join("breads.csv"), headers: true) do |row|
  Bread.create! do |bread|
    bread.id = row[0]
    bread.name = row[1]
  end
end

puts "Importing spreads..."
CSV.foreach(Rails.root.join("spreads.csv"), headers: true) do |row|
  Spread.create! do |spread|
    spread.id = row[0]
    spread.name = row[1]
  end
end

end

# csv_text = File.read(__dir__ + "/Sandwiches3.csv")
# csv = CSV.parse(csv_text, :headers => true)
# csv.each do |row|  
# Sandwich.create(sandwich_name: row.to_hash["﻿sandwich_name"], ingredients: row.to_hash["ingredients"]) 
# end