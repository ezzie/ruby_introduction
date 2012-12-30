# Each class in ruby have only one parent
# It may have long generation of parents and grandparents
# General behaviour are higher up hierarchy where as specific behaviur are in child classes

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

class TempEmployee < Employee
  def initialize(name, employee_no, hourly_rate)
    super(name, employee_no)
    @hourly_rate = hourly_rate
  end
  
  def get_hourly_rate
    return @hourly_rate
  end
  
  def set_hourly_rate(hourly_rate)
    @hourly_rate = hourly_rate
  end
end

emp = TempEmployee.new("rajan", 1, 20)
puts emp.get_employee_no
# Discuss sub_class definition
# super -  inside a method, the super keyword calls a method with the same name as the current method in the ancestor or superclass (true for constructor also)
# If the super keyword is used on its own, without any arguments being specified, all the arguments sent to the current method are passed to the ancestor method
# If specific list of arguments is specified

class ConstructorDemo
  
  # This passes a, b, c to the superclass
  def initialize( a, b, c, d, e, f )
     super( a, b, c )
  end
  # This passes a, b, c to the superclass
  def initialize( a, b, c )
     super
  end
  # This passes no arguments to the superclass
  def initialize( a, b, c)
     super()
  end
end

# Discuss overloading of method