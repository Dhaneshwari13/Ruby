
# Task-4: create two array and check intersection output (&) .
#1.

a1 = [1, 2, 3, 4, 5]
a2 = [3, 4, 6, 7]

intersection = a1 & a2
puts intersection.inspect

# output
# [3, 4]

#2.

a1 = [1,2,3,4,5,6]
a2 = [1,3,5]

a3 = a1 & a2 # intersection => [1, 3, 5]
a4 = a1 | a2 # union => [1, 2, 3, 4, 5, 6]

print a3
puts
print a4

