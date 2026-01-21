# Parent class
class Person
end

# Child class
class Student < Person
end

student = Student.new

# Methods from BasicObject
puts student.respond_to?(:==)
puts student.respond_to?(:equal?)

# Methods from Kernel (mixed into Object)
puts student.respond_to?(:puts)  #false
puts student.respond_to?(:print) #false
puts student.respond_to?(:class) #true
puts student.respond_to?(:capitalize) #false
