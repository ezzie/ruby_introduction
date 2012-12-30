class Employee
  attr_accessor :name, :employee_no
  @@count = 0 #class variable
  A = "I_AM_CONSTANT" # constants - begin with upper case. Store non changing values
   
  def initialize(name, employee_no)
    @name = name
    @employee_no = employee_no
    @@count += 1
  end
  
   def self.count
    @@count
  end
end

e1 = Employee.new 'Rajan Punchouty', 10
e1 = Employee.new 'Rajan Punchouty', 10
e1 = Employee.new 'Rajan Punchouty', 10
puts Employee.count # access class variable
puts Employee::A # access constant

x = e1.class
puts( x )
begin
    x = x.superclass
    puts(x.inspect) 
end until x == nil

#Partial Classes
class Employee
  attr_accessor :gender
end

e1 = Employee.new 'Rajan Punchouty', 10
e1.gender = 'male'
puts e1.gender