# CLASS METHODS
class MyClass
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

# SINGLETON METHOD
# belong to only object

FULLMOON = true #<= try changing this to false

class Creature  
  def initialize( aSpeech )
    @speech = aSpeech
  end
  
  def talk
    puts( @speech )
  end
end

cat = Creature.new( "miaow" )
dog = Creature.new( "woof" )
budgie = Creature.new( "Who's a pretty boy, then!" )
werewolf = Creature.new( "growl" )

def werewolf.howl
  if FULLMOON then
    puts( "How-oo-oo-oo-oo!" )
  else
    talk
  end
end

werewolf.howl
#       You can try out these...
# werewolf.talk
# budgie.talk
#       But...
# budgie.howl #<= this won't work!


# SINGLETON CLASS
ob = Object.new
class << ob
    def blather( aStr )
        puts("blather, blather #{aStr}")
    end
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
             anOb.priv
        end   
end 
myob = AccessClass.new
myob.pub      # This works! Prints out "public"
myob.prot        # This doesn't work! I get an error
myob.priv        # This doesn't work either - another error
myob2 = AccessClass.new
myob.useOb( myob2 ) # works