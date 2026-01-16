#Local variable
name = "dhanu"
age = 22
puts name
puts age

# Instance variable
class Student
  def initialize(name)
    @name = name
  end

  def show_name
    puts @name
  end
end

student1 = Student.new("Dhanu")
student1.show_name

