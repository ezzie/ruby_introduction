# CLASS METHODS
class MyClass
   #class method
   def MyClass.classMethod
      puts( "This is a class method" )
   end
   def instanceMethod
      puts( "This is an instance method" )
   end
end

MyClass.classMethod

# below are invalid methods calls

# MyClass.instanceMethod        #=> Error! This is an 'undefined method'
# ob = MyClass.new
# ob.classMethod          #=> Error! This is an 'undefined method'

# why we need class methods
# 1. utility methods
# 2. need to run method before creating object

# SHORT CUT SYNATX

class MyClass
   def MyClass.methodA
      puts("a")   
   end
   
    class << self
      def methodB
         puts("b")
      end
      
      def methodC
         puts("c")
      end
   end
end

# Other way
class << MyClass
   def methodD
      puts( "d" )
   end
end

puts( MyClass.singleton_methods.sort )
MyClass.methodA
MyClass.methodB
MyClass.methodC
MyClass.methodD

fn = '1_methods.rb'
if File.exist?(fn) then
   puts(File.expand_path(fn))
   puts(File.basename(fn))
   puts(File.dirname(fn))
   puts(File.extname(fn))
   puts(File.mtime(fn))
   puts("#{File.size(fn)} bytes")
else
   puts( "Can't find file!")
end

# METHOD VISIBILITY
# private, public and protected are not key words. They are methods of module class
class AccessClass
   
    private      
        def priv
             puts( "private" )
        end
      
    protected
        def prot         
             puts( "protected" )
        end      
      
   public            
        def pub
             puts( "public" )
        end
      
        def useOb( anOb )
             anOb.pub
             anOb.prot
             # anOb.priv
        end   
end 
myob = AccessClass.new
myob.pub      # This works! Prints out "public"
#myob.prot        # This doesn't work! I get an error
#myob.priv        # This doesn't work either - another error
myob2 = AccessClass.new
myob.useOb( myob2 ) # works

# RETRUN VALUES
class ReturnValues
  def method1
    a = 1
    b = 2
    c = a + b   # returns 3
  end
  def method2
    a = 1
    b = 2
    c = a + b
    return b   # returns 2
  end
  def method3
     "hello"     # returns "hello"
  end
  
  def method4
     a = 1 + 2
     "goodbye"   # returns "goodbye"
  end
  
  def method5
  end 
  #RETURNING MULTIPLE VALUES
  def ret_things
    greeting = "Hello world"
    a = 1
    b = 2.0
    return a, b, 3, "four", greeting, 6 * 10 # return multiple values
  end
  
  def ret_hash
    return {'a'=>'hello', 'b'=>'goodbye', 'c'=>'fare thee well'}
  end
end