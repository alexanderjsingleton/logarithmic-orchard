# This is how you define your own custom exception classes
# create class NoOrangesError using comparison operator of StandardError?
class NoOrangesError < StandardError

end


class OrangeTree

  attr_reader :height, :oranges

  attr_accessor :age
  def initialize(age = 0, height = 0, dead = false)
    @age = age
    @height = height
    @dead = dead
    @oranges = []
  end

  def age!
    @age += 1
    new_growth
  end

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


  def grow_oranges
    @oranges << (Orange.new)
  end

  def dead?
    if @age < 100
      return false
    elsif @age >= 100 && @age <= 150
      if rand < 0.1
        kill_tree
        return true
      end
    elsif @age > 150
      kill_tree
      return true
    end
    @dead
  end

  def kill_tree
    @dead = true
  end

  def how_many_oranges
    @age / 2
    # puts how_many_oranges
  end




  def any_oranges?
    return true unless @oranges.empty?
    return false if @oranges.empty?
  # end
  end


  def pick_an_orange!
    raise NoOrangesError, "This tree has no oranges" unless self.any_oranges?
    @oranges.pop
  end
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
  @diameter = (rand * 10 + 5).floor 
  end
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