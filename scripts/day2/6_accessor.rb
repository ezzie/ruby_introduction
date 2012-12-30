class Employee
  def initialize(name, employee_no)
    @name = name
    @employee_no = employee_no
  end

  def get_name
    return @name
  end

  def set_name (name)
    @name = name
  end

  def get_employee_no
    return @employee_no
  end

  def set_employee_no (employee_no)
    @employee_no = employee_no
  end
end

e1 = Employee.new 'some name', 10
puts(e1.get_name)
e1.set_name("Rajan")
puts(e1.get_name)

class BetterEmployee
  def initialize(name, employee_no)
    @name = name
    @employee_no = employee_no
  end

  def name
    return @name
  end

  def name= (name)
    @name = name
  end

  def employee_no
    return @employee_no
  end

  def employee_no= (employee_no)
    @employee_no = employee_no
  end
end

e1 = BetterEmployee.new 'Rajan', 10
puts e1.name
e1.name = "Rajan Punchouty"
puts e1.name

# Append = to the method name

class BestEmployee
  attr_reader :name, :employee_no
  attr_writer :name, :employee_no
  
  def initialize(name, employee_no)
    @name = name
    @employee_no = employee_no
  end
end

e1 = BestEmployee.new 'Rajan Punchouty', 10
puts e1.name
e1.name = "Mr Rajan Punchouty"
puts e1.name

# symbols - they are not variables, they are not constants they are just identifiers
# attr_reader and attr_writer are methods - using metaprogramming ruby interperator generate getters and setters
# attr_reader( :description ) creates an instance variable with the name, @description, and an accessor method named description()
# if you dont pass symbol to attr_reader - corresponding getter method is generated. Same is true for attr_writer. You can mix and choose

class TheBestEmployee
  attr_accessor :name, :employee_no
  
  def initialize(name, employee_no)
    @name = name
    @employee_no = employee_no
  end
end

e1 = TheBestEmployee.new 'Rajan Punchouty', 10
puts e1.name
e1.name = "The Rajan Punchouty"
puts e1.name

# attr_accessor( :description ) creates an instance variable, a getter method and setter method
