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
vat = 11.2 
print "Enter price : "
s = gets
subtotal = s.to_f
tax = subtotal * vat
puts "VAT on Rs. #{subtotal} is Rs. #{tax}, so grand total is Rs. #{subtotal+tax}"

# String method to_f
# Give some random string