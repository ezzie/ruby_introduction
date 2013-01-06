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