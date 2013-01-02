# CLass method
class SimpleClass
   def MyClass.classMethod
      puts( "This is a class method" )
   end
   def instanceMethod
      puts( "This is an instance method" )
   end
end
SimpleClass.classMethod

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

# Singleton Class
ob = Object.new
    # singleton class
class << ob
    def hello( aStr )
        puts("Hello #{aStr}")
    end
end

# Singleton Methods
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

class << werewolf
    def crawl
        puts( "Crwaling" )
    end
end

werewolf.howl
werewolf.crawl
#       You can try out these...
# werewolf.talk
# budgie.talk
#       But...
# budgie.howl #<= this won't work!

