#single line commit

=begin
multiline comments
multiline comments
=end
a = 10
puts a.class
a1 = 10.00
puts a1.class
a2 = "dhanu"
puts a2.class
a3 = :kiran
puts a3.class
a4 = []
puts a4.class
a5 = {"name":"dhanu","id":1}
puts a5.class
a6 = true
puts a6.class
a7 = false
puts a7.class
a8 = nil
puts a8.class


#input methods
#gets -> input from user
# taking input from the userS
print "enter your name: "
name = gets.chomp #converting a lowercase to upper case
puts name
print "enter r1"
r1 = gets.chomp  #converting a string to integer
puts

print "enter r2"
r2 = gets.chomp
puts

r3 = r1.to_i + r2.to_i
puts r3
