# Ranges
# starting values should be less than ending values
a = (1..10)
b = (-10..-1)
c = (-10..10)
d = ('a'..'z')
e = ('a'...'z')        # this three-dot range = 'a'..'y'
(1..10).to_a

for i in (1..10) do
    puts( i )
end

# ARRAYS
a0 = [1,2,3,4,5]

# iterating over array
for i in a0
    puts(i) 
end
p(a0)
a1 = [1,'two', 3.0, Time.new ] 
p( a1 ) 

puts a1[0]
puts a1[3]

a1[2] = Time.new
p(a1)

puts a1[10].nil?
puts "value at 10th index #{a1[10].inspect}  #{a1[10].class}" 

a1[10] = 6
p(a1)

# array may include expressions
def hello
  return "hello world"
end

x = [1+2, hello, `dir`]
puts "value at 0 index #{x[0]}"
puts "value at 1 index #{x[1]}"
puts "value at 2 index #{x[2]}"

# Built in function that return arrays
puts Dir.entries( 'C:\\' )
y = %w( this is an array of strings )
puts y

# Array can be created using constructor
a = Array.new                 # an empty array
a = Array.new(2)              # [nil,nil]
a = Array.new(2,"hello world") # ["hello world","hello world"]

# Multidimension Array

# Indexing to array
arr = ['h','e','l','l','o',' ','w','o','r','l','d']
print( arr[0,5] )        #=> hello (or) ["h", "e", "l", "l", "o"] 
print( arr[-5,5 ] )   #=> world (or) ["w", "o", "r", "l", "d"]
print( arr[0..4] )    #=> hello (or) ["h", "e", "l", "l", "o"]
print( arr[-5..-1] )  #=> world (or) ["w", "o", "r", "l", "d"]

# Copying Array
arr1=['h','e','l','l','o',' ','w','o','r','l','d']
arr2=arr1  # arr2 is now the same as arr1. 
           # Change arr1 and arr2 changes too!
arr3=arr1.clone
           # arr3 is a copy of arr1. 
           # Change arr3 and arr2 is unaffected
           
# Comparison Operator <=> - defined in module name Comparable
# a <=> b :=
  # if a < b then return -1
  # if a = b then return  0
  # if a > b then return  1
# It can also take of less than and greater than comparison without writing extra code
# Array Sorting
arr = [10,2,33,24,5]
p arr
sorted = arr.sort{
  |g,h|
    g <=> h
}
p sorted

# Comparing Values
class MyArray < Array
  include Comparable
  def <=> ( anotherArray )
    self.length <=> anotherArray.length
  end
end

a1 = MyArray.new(2, "two")
a2 = MyArray.new(3, "three")
a3 = MyArray.new(4, "four")

myBig = [a1,a2, a3]
puts myBig

puts myBig.sort

# Common used array methods - 
# &, +, -, <<, clear, compact, compact!, delete(object), delete_at(index), flatten, flatten!, length, reverse, reverse!, sort, sort!

# HASHES
h1 = Hash.new
h2 = Hash.new("My Default value") 
h2['treasure1'] = 'Silver ring'
h2['treasure2'] = 'Gold ring'
h2['treasure3'] = 'Ruby ring'
h2['treasure4'] = 'Sapphire ring'

# key can be number, string, symbol or any other ruby object

h1 = {    'room1'=>'The Treasure Room',
        'room2'=>'The Throne Room',
        'loc1'=>'A Forest Glade',
        'loc2'=>'A Mountain Stream' }
        
puts(h1['room2']) 
h2 = {1=>'one', 2=>'two', 3=> 'three'}
# Array and Hash has clone method

# Never take assumption about order of hash
# Curly braces on final hash arguments are optional.
# new syntax 1.9
flash = { success: "It worked!", error: "It failed." }

h1.delete('loc2')
p(h1.has_key?('loc2')) #=> false
p(h2.has_value?("two")) #=>true
p(h2.invert)         #=> {"one"=>1, "two"=>2, "three"=>3}
p(h2.keys)            #=>[1, 2, 3]
p(h2.values)        #=>["one", "two", "three"]
# Short hand way to create hashes

#SETS
s1 = Set.new( [1,2,3,4,5,2] )
s2 = Set.new( [1,1,2,3,4,4,5,1] )
s3 = Set.new( [1,2,100] )
s1.add( 1000 )
s1.merge(s2)

