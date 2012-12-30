###Example 1
puts "Ruby on rails training by Ezzie"

=begin
 This is a 
 multiline
 comment
=end


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

# Understand iniitializers
t1 = Treasure.new("Sword", "an Elvish weapon forged of gold")
t2 = Treasure.new("Ring", "a magic ring of great power")



# The inspect method lets you look inside an object
puts thing1.inspect
puts t1.inspect