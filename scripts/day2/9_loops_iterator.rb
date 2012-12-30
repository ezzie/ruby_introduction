# Regular for loop
# do is optional key word
for i in (1..10) do
   puts( i )
end

for i in [1,2,3] do
   puts( i )
end

arr = [10,2,33,24,5]
for i in arr do
   puts( i )
end

for s in ['one','two','three'] do 
   puts( s )
end

# 'each' method for  Arrays, Sets, Hashes, and Strings (a String being, in effect, a collection of characters)

[1,2,3].each  do |j|
   puts( j )
end

# Block and Block Parameters

[[1,2,3],[3,4,5],[6,7,8]].each{ 
   |a,b,c| 
     puts( "#{a}, #{b}, #{c}" ) 
}

# Other loops
0.upto(10) do
    | j |
    puts( j )
end
10.downto(0) do
    | j |
    puts( j )
end

# code for demo purpose. I will not execute as it is - need to provide implementation of tired, sleep and snore
while tired 
   sleep
end

sleep while tired # same as above

begin 
   sleep 
   snore
end while tired # code is preceded before test condition

# use begin and end to execute multiple statements

k = 5
until k == 10             # never executes
    puts(k)
    ki += 1  
end

# loop - explicitly need to break
arr= [1,2,3,4,5]
l=0
loop do
    puts(arr[l])
    l+=1
    if (l == arr.length) then 
       break 
    end
end

#Enumerable Module
x = (1..5).collect{ |i| i }
p( x )                #=> [1, 2, 3, 4, 5]
arr = [1,2,3,4,5]
y = arr.collect{ |i| i }
p( y )                #=> [1, 2, 3, 4, 5]
z = arr.collect{ |i| i * i }
p( z )                #=> [1, 4, 9, 16, 25]
p( arr.include?( 3 ) )        #=> true
p( arr.include?( 6 ) )        #=> false
p( arr.min )            #=> 1
p( arr.max )            #=> 5