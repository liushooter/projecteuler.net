# Power digit sum
# 215 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.

# What is the sum of the digits of the number 21000?

# 215 = 32768 并且其各位之和为 is 3 + 2 + 7 + 6 + 8 = 26.

# 21000 的各位数之和是多少？

num = 2**1000
array = num.to_s.split("")
arr = array.collect(&:to_i)
sum = arr.inject(:+)
puts "sum = #{sum}"