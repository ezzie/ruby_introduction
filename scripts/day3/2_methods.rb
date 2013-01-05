# default values
def aMethod( a=10, b=20 )
   return a, b
end

p( aMethod )            #=> displays: [10,  20]
p( aMethod( 1 ))        #=> displays: [1, 20]
p( aMethod( 1, 2 ))     #=> displays: [1, 2]

# uncertain number of arguments
def anotherMethod( a=10, b=20, c=100, *d )
   return a, b, c, d
end

p( anotherMethod( 1,2,3,4,6 ) )      #=> displays: [1, 2, 3, [4, 6]]

# pass by value vs reference
def no_change( x )
    return x
end
def change( x )
    x += 1
    return x
end
num = 10
puts( "num.object_id=#{num.object_id}" )
num = no_change( num )
puts( "num.object_id=#{num.object_id}" )
num = change( num )
puts( "num.object_id=#{num.object_id}" )

# Integer object_id
a = 1
b = 1
c = 2
d = "str"
e = "str"
f = 1.5
g = 1.5
puts( "a.object_id=#{a.object_id}" )
puts( "b.object_id=#{b.object_id}" )
puts( "c.object_id=#{c.object_id}" )
puts( "d.object_id=#{d.object_id}" )
puts( "e.object_id=#{e.object_id}" )

puts( "f.object_id=#{f.object_id}" )
puts( "g.object_id=#{g.object_id}" )

# ! methods
def aMethod( anArg )
    puts( "#{anArg.object_id}\n\n" )
end

class MyClass
end


i = 10
f = 10.5
s = "hello world"
ob = MyClass.new


puts( "#{i}.object_id = #{i.object_id}" )
aMethod( i )
puts( "#{f}.object_id = #{f.object_id}" )
aMethod( f )
puts( "#{s}.object_id = #{s.object_id}" )
aMethod( s )
puts( "#{ob}.object_id = #{ob.object_id}" )
aMethod( ob )
