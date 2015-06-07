# require_relative 'orange_tree'

# #Only run this _after_ your implementation and tests are complete

# #instantiate instance of OrangeTree class denoted by tree
# tree = OrangeTree.new

# #call instance variable destructive until instance chained to any_oranges? method
# tree.age! until tree.any_oranges?

# #interpolation statement reporting age of tree and dimensions
# # puts "Tree is #{tree.age} years old and #{tree.height} feet tall"

# # until loop for instiated variable tree chained to method .dead?
# until tree.dead?
# # basket local variable --> its respective basket is empty follow-up but
#   basket = []
# #while
#   while tree.any_oranges?
# #instance of class tree chained to destructive pick_an_orange! method is shoveled into basket array 
#     basket << tree.pick_an_orange!
#   end

#   #these are Monsanto oranges :)
#   avg_diameter = rand(70.00..76.00).round(2)
#   bushels = tree.age * 3

#   puts "Year #{tree.age} Report"
#   puts "Tree height: #{tree.height} feet"
#   puts "Harvest: Annual yield is #{bushels} oranges with an average diameter of #{avg_diameter} mm."
#   puts ""

#   # Age the tree another year
#   tree.age!
# end

# puts "Alas, the tree, she is dead!"

require_relative 'orange_tree'

#Only run this _after_ your implementation and tests are complete

#instantiate instance of OrangeTree class denoted by tree
tree = OrangeTree.new

#call instance variable destructive until instance chained to any_oranges? method
tree.age! until tree.any_oranges?

#interpolation statement reporting age of tree and dimensions
puts "Tree is #{tree.age} years old and #{tree.height} feet tall"

# until loop for instiated variable tree chained to method .dead?
until tree.dead?
# basket local variable --> its respective basket is empty follow-up but
  basket = []
#while
  while tree.any_oranges?
#instance of class tree chained to destructive pick_an_orange! method is shoveled into basket array 

    basket << tree.pick_an_orange!
  end

  avg_diameter = rand(70.00..76.00).round(2)

  puts "Year #{tree.age} Report"
  puts "Tree height: #{tree.height} feet"
  puts "Harvest:     #{basket.size} oranges with an average diameter of #{avg_diameter} inches"
  puts ""

  # Age the tree another year
  tree.age!
end

puts "Alas, the tree, she is dead!"