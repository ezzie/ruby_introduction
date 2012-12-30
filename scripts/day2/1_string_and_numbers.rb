###Example 1
puts "Hello World"

###Example 2
print( 'Enter your name: ' )
name = gets()
puts( "Hello #{name}" )

# puts vs print - puts add a line feed
# gets read a line from command
# name is a dynamic variable. No type is assignged to it. Ruby interpreter will infer there types from values.
# ruby is case sensative myvar is different from myVar
# variables start from lowercase
# If variable name begins with an uppercase character, Ruby will treat it as a constant.
# Paranthese are optional

###Example 3
print 'Enter your name again : ' 
name = gets
puts "Hello #{name} again" 

###Example 4
print 'Enter your name again : ' 
name = gets
puts 'Hello #{name} again'

# double quotes vs sungle quotes

###Example 5
someName = "Rajan"
puts( "\n\t#{(1 + 2) * 3}\nGoodbye \n#{someName}" )

# String and embedded evaluation

###Example 6
vat = 0.112 
print "Enter price : "
s = gets
subtotal = s.to_f
tax = subtotal * vat
puts "VAT on Rs. #{subtotal} is Rs. #{tax}, so grand total is Rs. #{subtotal+tax}"

# String method to_f
# Give some random string it will return 0.0

# Formatting
printf( "%f\n", 10.12945 )        #=> 10.129450
printf( "%0.02f\n", 10.12945 )     #=> 10.13

### Example 7
quote_in_string = 'It\'s my party'
puts quote_in_string

### Example 8
# method call in expression

# More String operations
puts "Hi my name is #{'rajan'.capitalize}" 
puts "Hi my name is #{'rajan'.capitalize}" 
puts "Two strings are equal :  #{'rajan'.casecmp('RaJan')}" 
puts "Two strings are equal :  #{'rajan'.casecmp('RaJ')}" 
puts "Two strings are equal :  #{'rajan'.casecmp('RaJan Punchouty')}" 
puts "#{'rajan'.center(20)}"
puts "#{'rajan\r\n'.chomp}" # return new string
puts "#{'rajan\n'.chomp!}" # modify existing string
puts "#{'rajan\n'.chop}"  # return new string
puts "#{'rajan'.chop!}" # modify existing string

double_quoated = %Q/This is the same as a double-quoted string./
double_quoated = %/This is also the same as a double-quoted string./
single_quoted = %q/And this is the same as a single-quoted string/
custom_quoted = %Q[This is a string]

#backquotes
puts(`dir`) # ruby treat it as command and pass it to OS
puts(%x/dir/)
puts(%x{dir})
print( "Goodbye #{%x{calc}}" )

# Concatnation
s = "Hello " << "world"
puts s
s = "Hello " + "world"
puts s
s = "Hello "  "world"
puts s

s = "Hello world"
puts s[1] # Access specific charactoer indexed from zero
puts( s[1].ord) # return numeric value of char
puts( s[1,1] )
puts( s[1,3] )
puts( s[3..7] ) 
puts( s[-5,5] )     # -1 is index of last charachters

s = "hello world"
puts s.length        #=> 11
s = "hello world"
puts s.reverse!        #=> Hello world
puts s
s = "hello world"
puts s.reverse        #=> dlrow olleH 
puts s
s = "hello world"
puts s.upcase        #=> HELLO WORLD
s = "hello world"
puts s.capitalize        #=> Hello world
s = "Hello World"
puts s.swapcase        #=> hELLO WORLD
s = "Hello World"
puts s.downcase        #=> hello world
# s = "Hello world"
puts s.insert(7,"NOT ") #=> hello wNOT orld
s = "Hello world"
puts s.split        #=> ["helo", "wNOT", "orld"]

# Below is array
s4 = "This " , "is" , " not a string!", 10
print("print (s4):" , s4, "\n")

# Heredocs
hdoc = <<RAJAN
I wandered lonely as a #{"cloud".upcase},
That floats on high o'er vale and hill...
RAJAN
puts hdoc