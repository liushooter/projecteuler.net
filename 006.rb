# Sum square difference
# The sum of the squares of the first ten natural numbers is,

# 1^2 + 2^2 + ... + 10^2 = 385
# The square of the sum of the first ten natural numbers is,

# (1 + 2 + ... + 10)^2 = 552 = 3025
# Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025  385 = 2640.

# Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum

# 前十个自然数的平方和是：1^2 + 2^2 + ... + 10^2 = 385

# 前十个自然数的和的平方是：(1 + 2 + ... + 10)^2 = 552 = 3025

# 所以平方和与和的平方的差是 3025 - 385 = 2640.

# 找出前一百个自然数的平方和与和平方的差

def answer(args)
  args.to_a
  sum_of_squares = 0

  args.each{ |n| sum_of_squares += n**2 }

  sum_of_plus = args.inject(:+)

  result = sum_of_plus**2 - sum_of_squares
  puts "result = #{result}"
end

answer (1..100)