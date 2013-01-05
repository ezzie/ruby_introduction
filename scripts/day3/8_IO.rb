# Reading
#1.
IO.foreach("testfile.txt") {|line| print( line ) }

#2.
lines = IO.readlines("testfile.txt")
lines.each{|line| print( line )}

#3.
File.foreach("testfile.txt") {|line| print( line ) }
lines = File.readlines("testfile.txt")
lines.each{|line| print( line )}

#Writing
f = File.new("myfile.txt", "w")
f.puts( "I", "wandered", "lonely", "as", "a", "cloud" )
f.close

# Directory or file existence
if File.exist?( "C:\\" ) then
    puts( "Yup, you have a C:\\ directory" )
else
    puts( "Eeek! Can't find the C:\\ drive!" )
end

# differetiating files and folders
def dirOrFile( aName )
    if File.directory?( aName ) then
        puts( "#{aName} is a directory" )
    else
        puts( "#{aName} is a file" )
    end
end

# Utility Class
FileUtils.cp( filepath, targetdir )
FileUtils.mkdir( targetdir )