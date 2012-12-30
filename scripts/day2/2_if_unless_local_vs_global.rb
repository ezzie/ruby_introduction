###Example 1
# If 
i = 2
if i == 0
  puts "zero"
elsif i == 1 then
  puts "one"
else
  puts i
end

### Example 2
# Unless
x=1
unless x>2
   puts "x is less than 2"
 else
  puts "x is greater than 2"
end

#Talks about and or operator

###Example 3
# Method definition
# Local and Global variables
# Global variale start with $

localvar = "hello"
$globalvar = "goodbye" 
def amethod
    localvar = 10
    puts( localvar )
    puts( $globalvar )
end
def anotherMethod
    localvar = 500
    $globalvar = "bonjour"
    puts( localvar )
    puts( $globalvar )
end

amethod           #=> $globalvar = "goodbye"
anotherMethod     #=>  $globalvar = "bonjour"
amethod           #=>  $globalvar = "bonjour"
puts( $globalvar )#=>  $globalvar = "bonjour"
   
