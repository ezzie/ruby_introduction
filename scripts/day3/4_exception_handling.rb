# begin
   # # Some code which may cause an exception
# rescue <Exception Class>
   # # Code to recover from the exception
# end
puts $!
begin
   x = 1/0
rescue Exception
   x = 0
   puts $!.class
   puts $!
end
puts x

# $! is a global variable to which is assigned the last exception.

#Better way
puts $!
begin
   x = 1/0
rescue Exception => exec
   x = 0
   puts $!.class
   puts $!
   puts exec.class
   puts exec
end
puts x

# Multiple exception
def calc( val1, val2 )
    begin
        result = val1 / val2
    rescue Exception => e
        puts e.class 
        puts e 
        result = nil
    end
    return result
end
calc 20, 0 
      #=> ZeroDivisionError
      #=> divided by 0
calc 20, "100" 
      #=> TypeError
      #=> String can't be coerced into Fixnum
calc "100", 100 
      #=> NoMethodError
      #=> undefined method `/' for "100":String
      
# Handling multiple exception
def calc_better( val1, val2 )
    begin
        result = val1 / val2
    rescue TypeError, NoMethodError => e
        puts( e.class )
        puts( e )
        puts( "One of the values is not a number!" )
        result = nil
    rescue Exception => e
        puts( e.class )
        puts( e )
        result = nil
    end
    return result
end
calc 20, 0 
calc 20, "100" 
calc "100", 100 

# Usage of ensure
# Recovering from exception and reseting state
 
startdir = Dir.getwd
puts startdir
begin
   Dir.chdir( "X:\\" )
   puts( `dir` )
rescue Exception => e
   puts e.class
   puts e
ensure
   Dir.chdir( startdir )
end

# Real World example for exception handling
f = File.new( "test.txt" )
begin
    for i in (1..6) do
        puts("line number: #{f.lineno}")
        line = f.gets.chomp
        num = line.to_i
        puts( "Line '#{line}' is converted to #{num}" )
        puts( 100 / num )
    end
rescue Exception => e
    puts( e.class )
    puts( e )
ensure
    f.close
    puts( "File closed" )
end

# Else Clause

# begin
        # # code which may cause an exception   
# rescue [Exception Type]
# else    # optional section executes if no exception occurs
# ensure  # optional exception always executes
# end

# Retry mechnisim
# If you think an error condition may be transient or may be corrected by itself
# Example - retrying for connecting external system
# Example Outlook
def doCalc
    begin
        print( "Enter a number: " )
        aNum = gets().chomp()
        result = 100 / aNum.to_i
    rescue Exception => e      
        result = 0
        puts( "Error: " + e.to_s + "\nPlease try again." )      
        retry           # retry on exception
    else
        msg = "Result = #{result}"
    ensure
        msg = "You entered '#{aNum}'. " + msg
    end
    return msg
end

doCalc

def doCalcBetter
    tries = 0
    begin
        print( "Enter a number: " )
        tries += 1
         aNum = gets().chomp()
        result = 100 / aNum.to_i   
    rescue Exception => e      
        msg = "Error: " + e.to_s
        puts( msg )
        puts( "tries = #{tries}" )
        result = 0      
        if tries < 3 then # set a fixed number of retries
           retry 
        end         
    else
        msg = "Result = #{result}"
    ensure
        msg = "You entered '#{aNum}'. " + msg
    end
    return msg
end
doCalcBetter

# defining exception
class NoNameError < Exception
    def to_str
        "No Name given!"
    end
end

# RAISE - exception
# e.backtrace
def do_work
  begin
    raise "An unknown exception just occurred!"
    #raise NoNameError.new
  rescue Exception => e
    puts( e.class )
    puts( "message: #{e}" )
    puts( e.backtrace )
  end
end 
do_work

# begin and end are optional
# Talk about catch and Throw

def dothings( aNum )
  i = 0
  while true
    puts( "I'm doing things..." )
    i += 1
    throw( :go_for_tea ) if (i == aNum )
  end
end


catch( :finished) do  
  print( 'Enter a number: ' )
  num = gets().chomp.to_i
  if num == 0 then throw :finished end      
    puts( 100 / num ) 
    
    
  catch( :go_for_tea ){
    dothings(5) 
  }
  
  puts( "Things have all been done. Time for tea!" )
end

puts( "Finished" )
