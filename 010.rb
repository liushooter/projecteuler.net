# Summation of primes

# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

# Find the sum of all the primes below two million.

# 10以下的质数的和是2 + 3 + 5 + 7 = 17.

# 找出两百万以下所有质数的和


def problem
  primes = [2,3,5,7]
  array  = []

  (1..2000000).each do |num|
    array << num if (not num % 2 == 0) && (not num % 3 == 0) && (not num % 5 == 0) && ( not num % 7 == 0)
  end

  array.each do |num|
    if is_prime?(num)
      primes << num
    end
  end

  sum = primes.inject(:+)
  puts "sum = #{sum}"
end

def is_prime? num
  return false if num <= 1
  2.upto(Math.sqrt(num).to_i) do |n|
    return false if num %n == 0
  end
  true
end

problem
