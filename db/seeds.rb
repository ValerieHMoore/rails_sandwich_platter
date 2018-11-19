require 'csv'

puts "Importing breads..."
CSV.foreach(Rails.root.join("db/breads.csv"), headers: true) do |row|
  Bread.create! do |bread|
    bread.id = row[0]
    bread.name = row[1]
  end
end

puts "Importing spreads..."
CSV.foreach(Rails.root.join("db/spreads.csv"), headers: true) do |row|
  Spread.create! do |spread|
    spread.id = row[0]
    spread.name = row[1]
  end
end

puts "Importing meats..."
CSV.foreach(Rails.root.join("db/meats.csv"), headers: true) do |row|
  Meat.create! do |meat|
    meat.id = row[0]
    meat.name = row[1]
  end
end

puts "Importing cheeses..."
CSV.foreach(Rails.root.join("db/cheeses.csv"), headers: true) do |row|
  Cheese.create! do |cheese|
    cheese.id = row[0]
    cheese.name = row[1]
  end
end

puts "Importing greens..."
CSV.foreach(Rails.root.join("db/greens.csv"), headers: true) do |row|
  Green.create! do |green|
    green.id = row[0]
    green.name = row[1]
  end
end
