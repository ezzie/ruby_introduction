# Ruby is Object Oriented Programming
# Discuss classes, objects and methods

x = 1 + 2

# + is a method on Fixnum object
# every operator is method
# == assignment operator is one of exeption
# https://github.com/ruby/ruby/blob/trunk/numeric.c - fix_plus(x, y)
# Refer http://rhg.rubyforge.org/chapter04.html

class Dog
    def set_name( aName )
       @myname = aName
    end
    
    def get_name
      return @myname # return is optional
    end
    
    def talk
       return 'woof!'
    end
end

# class definition starts with 'class' and ends with 'end'
# constants name should start with Upper Case and class name is constant and hence it should begin with upper case 
# method definition starts with 'def' and ends with 'end'
# aName is local variable
# @myname is instance variable - always start with '@'
# instance variables belong to object. It is not neccesary to pre declare instance variables as in Java and C#

myDog = Dog.new

# Class itself is object
# When a class definition is read by interperator, Dog in our case, 
# an object of type Class is created and assign to a global constant Dog
# new is a method of class Class - http://www.ruby-doc.org/core-1.9.3/Class.html

# Concepts of BasicObject, Object, Module and Class are more advanced

yourDog = Dog.new
mydog.set_name( 'Tomy' )
yourdog.set_name( 'Cezar' )

# concept of nil - accssing prior to assignment