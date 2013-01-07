# BLOCKS
#  It is a unit of code that works somewhat like a method but, unlike a method, it has no name.

3.times do |i|
    puts( i )
end

3.times { |i|
    puts( i )
}

(1..5).each { |i| puts 2 * i }

# Name less functions
# Covention - curly braces only for short one-line blocks and the do..end syntax for longer one-liners and for multi-line blocks

arr = ['one','two','three','four']
arr.each do |s|
    puts(s)
end

i=0
loop {
    puts(arr[i])
    i+=1
    if (i == arr.length) then 
        break 
    end
}

b3 = [1,2,3].collect{|x| x*2} 
# http://www.ruby-doc.org/core-1.9.3/Enumerator.html

b4 = ["hello","good day","how do you do"].collect{|x| x.capitalize }
b5 = ["hello","good day","how do you do"].each{|x| x.capitalize } 

# creating procs - object wrapper of blocks
a = Proc.new{|x| x = x*10; puts(x) }    #=> Proc
a.call(100)        #=> 1000
b = lambda{|x| x = x*10; puts(x) }      #=> Proc
b.call(100)
c = proc{|x| x.capitalize! }            #=> Proc
c1 = c.call( "hello" )
puts( c1 )             #=> Hello

d = lambda{|x| x.capitalize! }      
d1 = ["hello","good day","how do you do"].each{ |s| d.call(s)}
puts(d1.inspect)        #=> ["Hello", "Good day", "How do you do"]

#Proc.new does not check that the number of arguments passed to the block matches the number of block parameters. lambda does.
# proc is similar to Proc.new

a = Proc.new{|x,y,z| x = y*z; puts(x) }
a.call(2,5,10,100)        # This is not an error
b = lambda{|x,y,z| x = y*z; puts(x) }
b.call(2,5,10,100)        # This is an error
puts('---Block #2---' )
c = proc{|x,y,z| x = y*z; puts(x) }
c.call(2,5,10,100)        # This is an error in Ruby 1.8
                          # Not an error in Ruby 1.9

def aMethod
    yield
end
aMethod{ puts( "Good morning" ) }