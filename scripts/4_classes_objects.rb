# concept of nil - accssing prior to assignment
# Encapsulation

# free floacting scripts

puts self
puts self.class

# Constructors - new and initialize

class Thing
  def set_name( aName )
    @name = aName
  end
  
  def get_name
    return @name
  end
end

class Treasure
  def initialize( aName, aDescription )
    @name     = aName
    @description  = aDescription
  end
  
  def to_s # override default to_s method
    "The #{@name} Treasure is #{@description}\n"
  end
end 

thing1 = Thing.new
thing1.set_name( "A lovely Thing" )
puts thing1.get_name

# Understand iniitializers
t1 = Treasure.new("Sword", "an Elvish weapon forged of gold")
t2 = Treasure.new("Ring", "a magic ring of great power")

# understand to_s method of object class
# It is a string representation of an object
# we have overriden this method
puts t1.to_s
puts t2.to_s

# The inspect method lets you look inside an object
puts thing1.inspect
puts t1.inspect

# Garbage collection