#Symbols - Identifier with first character is colon
# Unique, a symbol provides an unambiguous identifier. Irrespective of scope
#Symbols are not constants, variables and not a string

# :name = "rajan" # not a variable
str = :name
puts str.class
puts( "hello".object_id ) #=> 16589436
puts( "hello".object_id ) #=> 16589388
puts( "hello".object_id ) #=> 16589340
puts( :hello.object_id ) #=> 208712
puts( :hello.object_id ) #=> 208712
puts( :hello.object_id ) #=> 208712

# A symbol is, in fact, a pointer 
# into the symbol table. The symbol table is Ruby’s internal list of known iden-
# tifiers—such as variable and method names. 

p Symbol.all_symbols 

#Applications - every where

#1.
# can pass it to method as below
def amethod( doThis )
    if (doThis == :deletefiles) then
       puts( 'Now deleting files...')
    elsif (doThis == :formatdisk) then
       puts( 'Now formatting disk...')
    else
        puts( "Sorry, command not understood." )
    end
end
amethod( :deletefiles )

#2.
#Case statement
case doThis 
    when :deletefiles then puts( 'Now deleting files...')
    when :formatdisk then puts( 'Now formatting disk...')
    else  puts( "Sorry, command not understood." )
end 

# Keys of Hashes # because of above
# params is hash thats we get from HTML form
params = {:id => 1, :name => "rajan"}

# attribute accessors
attr_reader( :description )
attr_writer( :description )
# catch throw

# Metaprogramming
class Array
    define_method( :aNewMethod, lambda{ 
        |*args| puts( args.inspect) 
    } ) 
end
puts Array.method_defined?( :aNewMethod ) 
[].aNewMethod( 1,2,3)

# You can remove a method at runtime
class Array
    remove_method( :aNewMethod )
end
