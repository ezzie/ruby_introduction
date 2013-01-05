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

def werewolf.creek
  puts "creeking"
end

class << werewolf
    def crawl
        puts( "Crwaling" )
    end
end

werewolf.howl
werewolf.crawl
werewolf.creek
#       You can try out these...
# werewolf.talk
# budgie.talk
#       But...
# budgie.howl #<= this won't work!

