# This is how you define your own custom exception classes
# create class NoOrangesError using comparison operator of StandardError?
class NoOrangesError < StandardError
# end class method
end

# create class OrangeTree
class OrangeTree
# set attribute readers to height and oranges
  attr_reader :height, :oranges
# set attribute writer to age
  attr_accessor :age
# create initialize method reqiring arguments of age, height and dead respectively set at 0,0 and false
  def initialize(age = 0, height = 0, dead = false)
# create instance variable age 
    @age = age
# create instance variable height
    @height = height
# create instance variable dead
    @dead = dead
# create instance variable set to empty array
    @oranges = []
# end initialize
  end

# def destructive age method
  def age!
# set instance variable to increment itself by 1
    @age += 1
  #return netwgrowth method
    new_growth
  #end method
  end

#define method new_growth to account for log
  def new_growth
#set instance variable height to account incremental growth rate equal (5.0 / instance variable age) obv 5 is just arbitrarily assigned
# => try to experiment logarithmically with Math module?
    @height += (5.0 / @age)
#begin product (or grow_oranges) at year 4, if over year 4
    grow_oranges if @age > 4
  # return instance variable oranges array
    @oranges
  # end new_growth method
  end

# define grow oranges method
  def grow_oranges
# shovel instance of Orange into oranges array denoted by @oranges
    @oranges << (Orange.new)
# end grow_oranges method
  end

# define dead? method
  def dead?
  #establish if condition for @age instance variable if less than integer
    if @age < 100
      #is less than true return false
      return false
    # elsif if instance variable is greater than or equal to 100 or instance variable age less than or equal to 150
    elsif @age >= 100 && @age <= 150
    # if randomly generated number-ran-less than 0.1-the integer/year assignment constraint
      if rand < 0.1
    # return kill_tree
        kill_tree
    # return loop to break loop f/u here
        return true
    # end loop
      end
    # elsif instance variable @age is greater than 150
    elsif @age > 150
    # return local method kill_tree 
      kill_tree
    #return true to break loop
      return true
    #end if/else loop
    end
    #return instance variable @dead
    @dead
  #end dead? method
  end

  #def kill_tree method
  def kill_tree
  # set dead instance variable to true so it will correspond to loop pattern in defined dead? method
    @dead = true
  #end method
  end

# define how_many_oranges method to account for yield curve horizon
  def how_many_oranges
    @age / 2
  end


  # Returns +true+ if there are any oranges on the tree, +false+ otherwise
  def any_oranges?
  # return true unless instance variable chained .empty?     http://www.ruby-doc.org/core-2.1.3/Array.html#method-i-empty-3F   https://www.ruby-forum.com/topic/160638
    return true unless @oranges.empty?
  # return true unless instance variable chained .empty? 
    return false if @oranges.empty?
  # end
  end

  # Returns an Orange if there are any
  # Raises a NoOrangesError otherwise
  # define destructive method pick_an_orange
  def pick_an_orange!
  # raise NoOrangesError- conditioned with statement "This tree has no oranges" unless self(which is particular instance of class) chained to .any_oranges method, which will return true if condition satisfied
    raise NoOrangesError, "This tree has no oranges" unless self.any_oranges?
  # return instance variable @oranges popped to remove the last element from self and returns it or nil if the array is empty   http://www.ruby-doc.org/core-2.1.3/Array.html#method-i-pop
    @oranges.pop
  # end pick_an_orange! local method
  end
  #end OrangeTree class
end

# create Orange class
class Orange
  # Initializes a new Orange with diameter +diameter+
  attr_reader :diameter
  #def initialize
  def initialize
  # set instance variable @diameter to constraint (rand *10 + 5) chained to floor
  # => this will round to whole lowest whole number
  # puts  @diameter = (rand * 10 + 5)#.floor 
  puts  @diameter = (rand * 10 + 5).floor 
  end
  #end Orange class
end


p groot = OrangeTree.new
p groot.age!
p groot.age!
p groot.age!
p groot.age!
p groot.age!
p groot.age!
p groot.height
p groot.any_oranges?
p groot.pick_an_orange!
p groot.dead?
p groot.age = 200
p groot.age!
p groot.dead?