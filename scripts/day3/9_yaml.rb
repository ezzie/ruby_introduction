# Serialization
# YAML defines a serialization (data-saving) format that stores information as human-readable text.

require "yaml"

str = "hello world".to_yaml
puts str.class
puts str

# three dashes defined start of new yaml document
# the single dash that defines each new element in a list

puts ["a1", "a2" ].to_yaml

class MyClass
    def initialize( anInt, aString )
        @myint = anInt
        @mystring =aString
    end
end
ob1 = MyClass.new( 100, "hello world" )
puts ob1.to_yaml
y ob1 # similar to p method

y({ 'fruit' => 'banana', :vegetable => 'cabbage', 'number' => 3 })

# nested sequence
arr = [1,[2,3,[4,5,6,[7,8,9,10],"end3"],"end2"],"end1"]
y arr

# Writing to file
f = File.open( 'friends.yml', 'w' )
arr = ["one", "two", "three"]
yaml_arr = YAML.dump( arr , f)
f.close

# Reading from file
File.open( 'friends.yml' ){ |file|
    $arr= YAML.load(file)
}
p($arr)

# Ignoring variables to save - transient
# examples password, connections
class Yclass
    def initialize(aNum, aStr, anArray)
        @num = aNum
        @str = aStr
        @arr = anArray
    end
   
    def to_yaml_properties
        ["@num", "@arr"]     #<= @str will not be saved!
    end      
end  