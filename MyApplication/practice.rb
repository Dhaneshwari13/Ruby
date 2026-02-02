#1.
counter = 100
while counter > 0
  puts counter
  counter/=5
  end  #o/p:100,20,4

  #2.
   if !true
   print "False"
   elsif !true || true
   print "True"
   end   #o/p:true

 #3.
a=["hey", "ruby", "language"]
b=["hey", "language", "ruby"]
if a==b
    print "Equal"
else
    print "Not equal"
end  #o/p:not equal

#4.
for num in 1...5
  puts num
end  #o/p:2 3 4

#5.
boolean_2 = !true && (!true || 100 != 5**2)
puts boolean_2 #o/p:false

#6.
i = 0
while i < 5
  puts i
   i=(i+1)**2
end #o/p:0 1 4

#7.
print "What's your first name?"
   first_name=gets.chomp
   a=first_name.capitalize
   a=a.reverse
   puts"My name is #{a}"  #o/p:What's your first name?dhanu

#8.
x=7
   y=9
   if x==y
   print "equal"
   elsif x>y
   print "greater" 
   else
   print "less"
   end  #o/p:less

  #9.
  array1 = [[1,2,3,4,5],[0,0,0,0]]
array2 = [[1,2,3],[0,0,0]]
print !array1  #o/p:false

#10.
 x, y, z = 12, 36, 72
    puts "The value of x is #{ x }."  #o/p:The value of x is 12
    puts "The sum of x and y is #{ x + y }."  #o/p:The sum of x and y is 48.
    puts "The average was #{ (x + y + z)/3 }."  #o/p:The average was 40.

#11.
a=["hey", "ruby", "language"]
b=["hey", "language", "ruby"]
if a==b
    print "Equal"
else
    print "Not equal"
end  #o/p:not equal

#12.
 boolean_1 = 2**3 != 3**2 || true
puts boolean_1  #o/p:true

#13
if(a==10 && b=9)
    print "true"
else
    print "false"
end   #o/p:error

#14
boolean_1 = 77<78
   puts(boolean_1)  #o/p:false

#15
for num in 1..3
  puts num*num
  m= 0
loop do
    m += 1
    puts m
    break if m == 3
end
end  #o/p:1 4 9 16 25

#16
# array1 = [1,2,3]
# array2 = [0,0,0]
# if array1 >= array2
# print "Greater or equal"
# else 
#     print "Not equal"
# end  
#o/p:error

#17
variable=true
   if !variable
   puts "true"
   else
   puts "false"
   end  #o/p:false

   #18
   variable="true".length
   if variable
   puts "true"
   else
   puts "false"
   end  #o/p:true

   #19
string_array = ["a","e","i","o","u"]
boolean_array = ["True","False"]
puts string_array[3]
puts boolean_array[1]  #o/p:o

#20
counter = 1
until counter > 10
  puts counter
counter+=1 
  end #o/p:1 2 3 4 5 6 7 8 9 10