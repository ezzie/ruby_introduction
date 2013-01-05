#puts "Ruby on Rails training by Ezzie"

=begin
 This is a 
 multiline
 comment
=end

# Built in function that return arrays
# class MyArray < Array
  # include Comparable
  # def <=> ( anotherArray )
    # str =  "first  #{self.length} second #{anotherArray.length}" 
    # puts str
    # p(self)
    # self.length <=> anotherArray.length
  # end
# end
# 
# a1 = MyArray.new(2, "two")
# a2 = MyArray.new(3, "three")
# a3 = MyArray.new(4, "four")
# a4 = MyArray.new(5, "four")
# 
# 
# myBig = [a4, a1, a2, a1, a3]
# p myBig
# puts "rrrrrraaaajjjjaaannnn"
# p myBig.sort
require 'set'
s1 = Set.new [1, 2]
puts s1