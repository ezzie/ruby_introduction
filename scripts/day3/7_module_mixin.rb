# in ruby we have single parents
# no multiple inheritence as of C++
# But sometimes it is useful for classes that are not closely related to implement some shared features.

# Modules - similar to interface in Java and C#

# Module is like a class infact it is immediate ancesstor of class
#  Just like a class, a module can contain constants, methods, mudule methods and classes.

# MIXIN with Care

module MySimpleModule
    REWARD = 100   
    
    def prize
        return "You've won #{REWARD} credits"
    end
    
    def MySimpleModule.lose
      return "Sorry, you didn't win"
    end    
end

# DIFFERENCES WITH CLASS

# 1. Can not have instances
# 2. Can not have super class ????????
# 3. Can not have sub classes

# Modules as NAMESPACE

module MyModule
    GOODMOOD = "happy"
    BADMOOD = "grumpy"
   
    def greet
        return "I'm #{GOODMOOD}. How are you?"
    end
    def MyModule.greet
        return "I'm #{BADMOOD}. How are you?"
    end
end

class MyClass
    include MyModule
    def sayHi
        puts greet 
    end
    def sayBye
        puts MyModule.greet
    end
end

obj = MyClass.new
obj.sayHi
obj.sayBye
puts MyModule::GOODMOOD

# Alias methods
module Happy
    def Happy.mood
        return "happy"
    end
   
    def expression
        return "smiling"
    end
    alias happyexpression expression
end

#require( "./testmod" ) 
#require( "./testmod" ) 
#require( "testmod" ) # if same directory

puts "#{$:}"
$: << "C:/mydir"
#  Comparable, Enumerable, FileTest, GC, Kernel, Math, ObjectSpace, Precision, Process, and Signal
# Kernel mixin with Object class -  gets, puts, print, and require

module OuterMod
    module InnerMod
        class Class1
        end
    end
end
OuterMod::InnerMod::Class1

# assigning module to a object - similar to singleton method
module A
    def method_a
        puts( 'hello from a' )
    end
end
class MyClassA
    def mymethod
        puts( 'hello from mymethod of class MyClass' )
    end
end
ob = MyClassA.new
ob.mymethod       #=> hello from mymethod of class MyClass
ob.extend(A)

module B
    def method_b
        puts( 'hello from b' )
    end
end
module C
    def mymethod
        puts( 'hello from mymethod of module C' )
    end
end
ob.extend(B, C)
ob.method_b       #=> hello from b
ob.mymethod       #=> hello from mymethod of module C