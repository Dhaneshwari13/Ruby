# Palindrome using String

puts "Enter a string"
str = gets.chomp

if str == str.reverse
  puts "Palindrome"
else
  puts "Not a palindrome"
end

#o/p:madam ->it is a palindrome
#o/p:dhanu ->it is not a palindrome


# Palindrome using Number
puts "Enter a number"
num = gets.chomp

if num == num.reverse
  puts "Palindrome"  #o/p:121
else
  puts "Not a palindrome" #o/p:234
end



