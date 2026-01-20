# Base (Parent) class
class Person
  def greet
    puts "Hello from Person"
  end
end

# Child class
class Student < Person
  def greet
    puts "Hello from Student"
  end
end

# Create objects
person = Person.new
student = Student.new

# Call methods
person.greet
student.greet
