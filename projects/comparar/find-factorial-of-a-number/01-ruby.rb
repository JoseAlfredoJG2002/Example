# to find the factorial of a number

number = 7
factorial = 1

if num < 0
  puts "Sorry, factorial does not exist for negative numbers"
elsif num.zero?
  puts "The factorial of 0 is 1"
else
  (2..num).each { |i| factorial *= i }
  puts "The factorial of #{num} is #{factorial}"
end
