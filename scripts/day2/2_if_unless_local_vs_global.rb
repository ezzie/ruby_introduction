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

aDay = 'Sunday'
working_overtime = false
if aDay == 'Saturday' or aDay == 'Sunday' and not working_overtime
   daytype = 'holiday'
   puts( "Hurrah!" )
else
   daytype = 'working day'
end

if aDay == 'Saturday' || aDay == 'Sunday' &&  !working_overtime 
   daytype = 'holiday'
end
#Talks about and or operator

### Example 2
# Unless
x=1
unless x>2
   puts "x is less than 2"
 else
  puts "x is greater than 2"
end

case( i )
   when 1 then puts("It's Monday" )
   when 2 then puts("It's Tuesday" )
   when 3 then puts("It's Wednesday" )
   when 4 then puts("It's Thursday" )
   when 5 then puts("It's Friday" )
   when (6..7) then puts( "Yippee! It's the weekend! " )
   else puts( "That's not a real day!" )
end

# === operator used to test equality with in when

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
   
