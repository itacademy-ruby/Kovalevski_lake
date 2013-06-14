module Flying
  def fly; 'flying' end
end

module Quacking
  def quack; 'quacking' end
end

module Swimming
  def swim; 'swimming' end
  def self.included base
  	puts "#{base} Swimming module was included!"
  end
end

class Duck
  def fly; "can't fly" end
  def swim; "can't swim" end
  def quack; "can't quack" end
  def eat; "eats all around" end
end

class RealDuck < Duck
  include Quacking
  include Swimming
  include Flying
end
class RubberDuck < Duck
  include Quacking
  include Swimming
end
class WoodDuck < Duck
   include Swimming
  def eat; "nothing eats" end
end

class RobotDuck < Duck
  include Quacking
  include Swimming
  include Flying
end

class RocketDuck < RobotDuck
  def fly
    "flying on rocket!"
  end
   def eat; "eats nothing" end
end

class PropellerDuck < RobotDuck
  def fly
    'flying with propeller'
  end
  def eat; "eats nothing" end
end



ducks ||= []
ducks << RealDuck.new
ducks << RubberDuck.new
ducks << WoodDuck.new
ducks << RocketDuck.new
ducks << PropellerDuck.new

ducks.each do |duck|
  puts "#{duck.class} #{duck.swim}"
  puts "#{duck.class} #{duck.quack}"
  puts "#{duck.class} #{duck.fly}"
  puts "#{duck.class} #{duck.eat}"

end