# Factorial Program in Ruby

def fact(n)
  result = 1
  for i in 1..n
    result *= i
  end
  puts "Factorial is: #{result}"
end

puts "Enter a number"
n = gets.chomp.to_i
fact(n)
