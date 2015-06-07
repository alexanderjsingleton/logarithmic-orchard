require_relative 'orange_tree'

tree = OrangeTree.new

tree.age! until tree.any_oranges?

puts "Tree is #{tree.age} years old and #{tree.height} feet tall"

until tree.dead?
  basket = []
  while tree.any_oranges?
    basket << tree.pick_an_orange!
  end

  avg_diameter = rand(70.00..76.00).round(2)

  puts "Year #{tree.age} Report"
  puts "Tree height: #{tree.height} feet"
  puts "Harvest:     #{tree.how_many_oranges.round(0)} oranges with an average diameter of #{avg_diameter} mm"
  puts ""
 
  tree.age!
end

puts "Alas, the tree, she is dead!"